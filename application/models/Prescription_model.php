<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Prescription_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     * Get all prescriptions
     */
    public function get_all_prescriptions($limit, $offset, $search = null, $filter = array()) {
        $this->db->select('p.*, 
                          CONCAT(pat.first_name, " ", pat.last_name) as patient_name,
                          pat.patient_code,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('prescriptions p');
        $this->db->join('patients pat', 'pat.patient_id = p.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = p.doctor_id', 'left');
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('p.prescription_number', $search);
            $this->db->or_like('pat.first_name', $search);
            $this->db->or_like('pat.last_name', $search);
            $this->db->or_like('pat.patient_code', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['doctor_id'])) {
            $this->db->where('p.doctor_id', $filter['doctor_id']);
        }
        
        if (!empty($filter['patient_id'])) {
            $this->db->where('p.patient_id', $filter['patient_id']);
        }
        
        if (!empty($filter['status'])) {
            $this->db->where('p.status', $filter['status']);
        }
        
        if (!empty($filter['date'])) {
            $this->db->where('DATE(p.prescription_date)', $filter['date']);
        }
        
        $this->db->order_by('p.prescription_date', 'DESC');
        $this->db->limit($limit, $offset);
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Count prescriptions
     */
    public function count_prescriptions($search = null, $filter = array()) {
        $this->db->from('prescriptions p');
        $this->db->join('patients pat', 'pat.patient_id = p.patient_id', 'left');
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('p.prescription_number', $search);
            $this->db->or_like('pat.first_name', $search);
            $this->db->or_like('pat.last_name', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['doctor_id'])) {
            $this->db->where('p.doctor_id', $filter['doctor_id']);
        }
        
        if (!empty($filter['patient_id'])) {
            $this->db->where('p.patient_id', $filter['patient_id']);
        }
        
        if (!empty($filter['status'])) {
            $this->db->where('p.status', $filter['status']);
        }
        
        return $this->db->count_all_results();
    }

    /**
     * Get single prescription
     */
    public function get_prescription($prescription_id) {
        $this->db->select('p.*, 
                          pat.*,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name,
                          c.consultation_number');
        $this->db->from('prescriptions p');
        $this->db->join('patients pat', 'pat.patient_id = p.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = p.doctor_id', 'left');
        $this->db->join('consultations c', 'c.consultation_id = p.consultation_id', 'left');
        $this->db->where('p.prescription_id', $prescription_id);
        
        $query = $this->db->get();
        return $query->row();
    }

    /**
     * Get prescription details (medicines)
     */
    public function get_prescription_details($prescription_id) {
        $this->db->select('pd.*, pi.product_name, pi.product_model');
        $this->db->from('prescription_details pd');
        $this->db->join('product_information pi', 'pi.product_id = pd.product_id', 'left');
        $this->db->where('pd.prescription_id', $prescription_id);
        $this->db->order_by('pd.detail_id', 'ASC');
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Create prescription
     */
    public function create_prescription($data) {
        // Generate unique prescription number
        $data['prescription_number'] = $this->generate_prescription_number();
        
        $this->db->insert('prescriptions', $data);
        return $this->db->insert_id();
    }

    /**
     * Update prescription
     */
    public function update_prescription($prescription_id, $data) {
        $this->db->where('prescription_id', $prescription_id);
        return $this->db->update('prescriptions', $data);
    }

    /**
     * Add prescription detail (medicine)
     */
    public function add_prescription_detail($data) {
        return $this->db->insert('prescription_details', $data);
    }

    /**
     * Update prescription detail
     */
    public function update_prescription_detail($detail_id, $data) {
        $this->db->where('detail_id', $detail_id);
        return $this->db->update('prescription_details', $data);
    }

    /**
     * Delete prescription detail
     */
    public function delete_prescription_detail($detail_id) {
        $this->db->where('detail_id', $detail_id);
        return $this->db->delete('prescription_details');
    }

    /**
     * Delete all prescription details
     */
    public function delete_all_prescription_details($prescription_id) {
        $this->db->where('prescription_id', $prescription_id);
        return $this->db->delete('prescription_details');
    }

    /**
     * Generate unique prescription number
     */
    private function generate_prescription_number() {
        $prefix = 'PRES-' . date('Y') . '-';
        
        $this->db->select('prescription_number');
        $this->db->from('prescriptions');
        $this->db->like('prescription_number', $prefix, 'after');
        $this->db->order_by('prescription_id', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get();
        
        if ($query->num_rows() > 0) {
            $last_number = $query->row()->prescription_number;
            $last_sequence = (int)substr($last_number, -4);
            $new_sequence = $last_sequence + 1;
        } else {
            $new_sequence = 1;
        }
        
        return $prefix . str_pad($new_sequence, 4, '0', STR_PAD_LEFT);
    }

    /**
     * Get prescription statistics
     */
    public function get_prescription_stats() {
        $stats = array();
        
        // Total
        $stats['total'] = $this->db->count_all('prescriptions');
        
        // Today
        $this->db->where('DATE(prescription_date)', date('Y-m-d'));
        $stats['today'] = $this->db->count_all_results('prescriptions');
        
        // Pending
        $this->db->where('status', 'Pending');
        $stats['pending'] = $this->db->count_all_results('prescriptions');
        
        // Dispensed
        $this->db->where('status', 'Dispensed');
        $stats['dispensed'] = $this->db->count_all_results('prescriptions');
        
        // This month
        $this->db->where('MONTH(prescription_date)', date('m'));
        $this->db->where('YEAR(prescription_date)', date('Y'));
        $stats['this_month'] = $this->db->count_all_results('prescriptions');
        
        return $stats;
    }

    /**
     * Get prescriptions by patient
     */
    public function get_patient_prescriptions($patient_id) {
        $this->db->select('p.*, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('prescriptions p');
        $this->db->join('users u', 'u.user_id = p.doctor_id', 'left');
        $this->db->where('p.patient_id', $patient_id);
        $this->db->order_by('p.prescription_date', 'DESC');
        
        $query = $this->db->get();
        return $query->result();
    }
}
