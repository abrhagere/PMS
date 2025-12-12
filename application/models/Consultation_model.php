<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Consultation_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     * Get all consultations
     */
    public function get_all_consultations($limit, $offset, $search = null, $filter = array()) {
        $this->db->select('c.*, 
                          CONCAT(p.first_name, " ", p.last_name) as patient_name,
                          p.patient_code,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('consultations c');
        $this->db->join('patients p', 'p.patient_id = c.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = c.doctor_id', 'left');
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('c.consultation_number', $search);
            $this->db->or_like('p.first_name', $search);
            $this->db->or_like('p.last_name', $search);
            $this->db->or_like('p.patient_code', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['doctor_id'])) {
            $this->db->where('c.doctor_id', $filter['doctor_id']);
        }
        
        if (!empty($filter['date'])) {
            $this->db->where('DATE(c.consultation_date)', $filter['date']);
        }
        
        $this->db->order_by('c.consultation_date', 'DESC');
        $this->db->limit($limit, $offset);
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Count consultations
     */
    public function count_consultations($search = null) {
        $this->db->from('consultations c');
        $this->db->join('patients p', 'p.patient_id = c.patient_id', 'left');
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('c.consultation_number', $search);
            $this->db->or_like('p.first_name', $search);
            $this->db->or_like('p.last_name', $search);
            $this->db->group_end();
        }
        
        return $this->db->count_all_results();
    }

    /**
     * Get single consultation
     */
    public function get_consultation($consultation_id) {
        $this->db->select('c.*, 
                          p.*,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name,
                          dp.specialization,
                          a.appointment_number, a.appointment_time');
        $this->db->from('consultations c');
        $this->db->join('patients p', 'p.patient_id = c.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = c.doctor_id', 'left');
        $this->db->join('doctor_profiles dp', 'dp.user_id = c.doctor_id', 'left');
        $this->db->join('appointments a', 'a.appointment_id = c.appointment_id', 'left');
        $this->db->where('c.consultation_id', $consultation_id);
        
        $query = $this->db->get();
        return $query->row();
    }

    /**
     * Create consultation
     */
    public function create_consultation($data) {
        // Generate unique consultation number
        $data['consultation_number'] = $this->generate_consultation_number();
        
        return $this->db->insert('consultations', $data);
    }

    /**
     * Update consultation
     */
    public function update_consultation($consultation_id, $data) {
        $this->db->where('consultation_id', $consultation_id);
        return $this->db->update('consultations', $data);
    }

    /**
     * Generate unique consultation number
     */
    private function generate_consultation_number() {
        $prefix = 'CON-' . date('Y') . '-';
        
        $this->db->select('consultation_number');
        $this->db->from('consultations');
        $this->db->like('consultation_number', $prefix, 'after');
        $this->db->order_by('consultation_id', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get();
        
        if ($query->num_rows() > 0) {
            $last_number = $query->row()->consultation_number;
            $last_sequence = (int)substr($last_number, -4);
            $new_sequence = $last_sequence + 1;
        } else {
            $new_sequence = 1;
        }
        
        return $prefix . str_pad($new_sequence, 4, '0', STR_PAD_LEFT);
    }

    /**
     * Get consultation statistics
     */
    public function get_consultation_stats() {
        $stats = array();
        
        // Total
        $stats['total'] = $this->db->count_all('consultations');
        
        // Today
        $this->db->where('DATE(consultation_date)', date('Y-m-d'));
        $stats['today'] = $this->db->count_all_results('consultations');
        
        // This month
        $this->db->where('MONTH(consultation_date)', date('m'));
        $this->db->where('YEAR(consultation_date)', date('Y'));
        $stats['this_month'] = $this->db->count_all_results('consultations');
        
        return $stats;
    }
}









