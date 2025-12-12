<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Appointment_model extends CI_Model {
    
    public function __construct() {
        parent::__construct();
    }
    
    /**
     * Get all appointments with pagination
     */
    public function get_all_appointments($limit, $offset, $search = null, $filter = array()) {
        $this->db->select('a.*, 
                          CONCAT(p.first_name, " ", p.last_name) as patient_name,
                          p.patient_code,
                          p.phone as patient_phone,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('appointments a');
        $this->db->join('patients p', 'p.patient_id = a.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = a.doctor_id', 'left');
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('a.appointment_number', $search);
            $this->db->or_like('p.first_name', $search);
            $this->db->or_like('p.last_name', $search);
            $this->db->or_like('p.patient_code', $search);
            $this->db->or_like('p.phone', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['status'])) {
            $this->db->where('a.status', $filter['status']);
        }
        
        if (!empty($filter['date'])) {
            $this->db->where('a.appointment_date', $filter['date']);
        }
        
        if (!empty($filter['doctor_id'])) {
            $this->db->where('a.doctor_id', $filter['doctor_id']);
        }
        
        $this->db->order_by('a.appointment_date', 'DESC');
        $this->db->order_by('a.appointment_time', 'DESC');
        $this->db->limit($limit, $offset);
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Count all appointments
     */
    public function count_appointments($search = null, $filter = array()) {
        $this->db->from('appointments a');
        $this->db->join('patients p', 'p.patient_id = a.patient_id', 'left');
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('a.appointment_number', $search);
            $this->db->or_like('p.first_name', $search);
            $this->db->or_like('p.last_name', $search);
            $this->db->or_like('p.patient_code', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['status'])) {
            $this->db->where('a.status', $filter['status']);
        }
        
        if (!empty($filter['date'])) {
            $this->db->where('a.appointment_date', $filter['date']);
        }
        
        return $this->db->count_all_results();
    }

    /**
     * Get single appointment
     */
    public function get_appointment($appointment_id) {
        $this->db->select('a.*, 
                          p.*, 
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name,
                          dp.specialization, dp.room_number');
        $this->db->from('appointments a');
        $this->db->join('patients p', 'p.patient_id = a.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = a.doctor_id', 'left');
        $this->db->join('doctor_profiles dp', 'dp.user_id = a.doctor_id', 'left');
        $this->db->where('a.appointment_id', $appointment_id);
        
        $query = $this->db->get();
        return $query->row();
    }
    
    /**
     * Create new appointment
     */
    public function create_appointment($data) {
        // Generate unique appointment number
        $data['appointment_number'] = $this->generate_appointment_number();
        
        return $this->db->insert('appointments', $data);
    }
    
    /**
     * Update appointment
     */
    public function update_appointment($appointment_id, $data) {
        $this->db->where('appointment_id', $appointment_id);
        return $this->db->update('appointments', $data);
    }
    
    /**
     * Delete appointment
     */
    public function delete_appointment($appointment_id) {
        $this->db->where('appointment_id', $appointment_id);
        return $this->db->delete('appointments');
    }

    /**
     * Generate unique appointment number
     */
    private function generate_appointment_number() {
        $prefix = 'APT-' . date('Y') . '-';
        
        $this->db->select('appointment_number');
        $this->db->from('appointments');
        $this->db->like('appointment_number', $prefix, 'after');
        $this->db->order_by('appointment_id', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get();
        
        if ($query->num_rows() > 0) {
            $last_number = $query->row()->appointment_number;
            $last_sequence = (int)substr($last_number, -4);
            $new_sequence = $last_sequence + 1;
        } else {
            $new_sequence = 1;
        }
        
        return $prefix . str_pad($new_sequence, 4, '0', STR_PAD_LEFT);
    }

    /**
     * Get appointments for calendar view
     */
    public function get_calendar_appointments($start_date, $end_date, $doctor_id = null) {
        $this->db->select('a.appointment_id, a.appointment_date, a.appointment_time, 
                          a.duration, a.status, a.appointment_type,
                          CONCAT(p.first_name, " ", p.last_name) as patient_name,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('appointments a');
        $this->db->join('patients p', 'p.patient_id = a.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = a.doctor_id', 'left');
        $this->db->where('a.appointment_date >=', $start_date);
        $this->db->where('a.appointment_date <=', $end_date);
        
        if ($doctor_id) {
            $this->db->where('a.doctor_id', $doctor_id);
        }
        
        $query = $this->db->get();
        return $query->result();
    }
    
    /**
     * Get today's appointments
     */
    public function get_today_appointments() {
        return $this->get_appointments_by_date(date('Y-m-d'));
    }

    /**
     * Get appointments by date
     */
    public function get_appointments_by_date($date) {
        $this->db->select('a.*, 
                          CONCAT(p.first_name, " ", p.last_name) as patient_name,
                          p.patient_code,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('appointments a');
        $this->db->join('patients p', 'p.patient_id = a.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = a.doctor_id', 'left');
        $this->db->where('a.appointment_date', $date);
        $this->db->order_by('a.appointment_time', 'ASC');
        
        $query = $this->db->get();
        return $query->result();
    }
    
    /**
     * Get appointment statistics
     */
    public function get_appointment_stats() {
        $stats = array();
        
        // Total appointments
        $stats['total'] = $this->db->count_all('appointments');
        
        // Today's appointments
        $this->db->where('appointment_date', date('Y-m-d'));
        $stats['today'] = $this->db->count_all_results('appointments');
        
        // This week's appointments
        $this->db->where('appointment_date >=', date('Y-m-d', strtotime('monday this week')));
        $this->db->where('appointment_date <=', date('Y-m-d', strtotime('sunday this week')));
        $stats['this_week'] = $this->db->count_all_results('appointments');
        
        // Pending appointments
        $this->db->where('status', 'Scheduled');
        $stats['scheduled'] = $this->db->count_all_results('appointments');
        
        // Completed appointments
        $this->db->where('status', 'Completed');
        $stats['completed'] = $this->db->count_all_results('appointments');
        
        return $stats;
    }

    /**
     * Check if time slot is available
     */
    public function is_slot_available($doctor_id, $date, $time, $exclude_appointment_id = null) {
        $this->db->where('doctor_id', $doctor_id);
        $this->db->where('appointment_date', $date);
        $this->db->where('appointment_time', $time);
        $this->db->where('status !=', 'Cancelled');
        
        if ($exclude_appointment_id) {
            $this->db->where('appointment_id !=', $exclude_appointment_id);
        }
        
        return $this->db->count_all_results('appointments') == 0;
    }

    /**
     * Get available doctors
     */
    public function get_available_doctors() {
        $this->db->select('u.user_id, 
                          CONCAT(u.first_name, " ", u.last_name) as full_name,
                          dp.specialization, dp.consultation_fee');
        $this->db->from('users u');
        $this->db->join('sec_userrole sur', 'sur.user_id = u.user_id');
        $this->db->join('doctor_profiles dp', 'dp.user_id = u.user_id', 'left');
        $this->db->where('sur.roleid', 17); // Doctor role ID
        $this->db->where('u.status', 1);
        
        $query = $this->db->get();
        return $query->result();
    }
}
