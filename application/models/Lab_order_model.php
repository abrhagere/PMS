<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lab_order_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     * Get all lab orders
     */
    public function get_all_orders($limit, $offset, $search = null, $filter = array()) {
        $this->db->select('lo.*, 
                          CONCAT(p.first_name, " ", p.last_name) as patient_name,
                          p.patient_code,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('lab_orders lo');
        $this->db->join('patients p', 'p.patient_id = lo.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = lo.ordered_by', 'left');
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('lo.order_number', $search);
            $this->db->or_like('p.first_name', $search);
            $this->db->or_like('p.last_name', $search);
            $this->db->or_like('p.patient_code', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['doctor_id'])) {
            $this->db->where('lo.ordered_by', $filter['doctor_id']);
        }
        
        if (!empty($filter['patient_id'])) {
            $this->db->where('lo.patient_id', $filter['patient_id']);
        }
        
        if (!empty($filter['status'])) {
            $this->db->where('lo.status', $filter['status']);
        }
        
        if (!empty($filter['priority'])) {
            $this->db->where('lo.priority', $filter['priority']);
        }
        
        if (!empty($filter['date'])) {
            $this->db->where('DATE(lo.order_date)', $filter['date']);
        }
        
        $this->db->order_by('lo.order_date', 'DESC');
        $this->db->limit($limit, $offset);
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Count lab orders
     */
    public function count_orders($search = null, $filter = array()) {
        $this->db->from('lab_orders lo');
        $this->db->join('patients p', 'p.patient_id = lo.patient_id', 'left');
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('lo.order_number', $search);
            $this->db->or_like('p.first_name', $search);
            $this->db->or_like('p.last_name', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['doctor_id'])) {
            $this->db->where('lo.ordered_by', $filter['doctor_id']);
        }
        
        if (!empty($filter['patient_id'])) {
            $this->db->where('lo.patient_id', $filter['patient_id']);
        }
        
        if (!empty($filter['status'])) {
            $this->db->where('lo.status', $filter['status']);
        }
        
        return $this->db->count_all_results();
    }

    /**
     * Get single lab order
     */
    public function get_order($order_id) {
        $this->db->select('lo.*, 
                          p.*,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name,
                          c.consultation_number');
        $this->db->from('lab_orders lo');
        $this->db->join('patients p', 'p.patient_id = lo.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = lo.ordered_by', 'left');
        $this->db->join('consultations c', 'c.consultation_id = lo.consultation_id', 'left');
        $this->db->where('lo.order_id', $order_id);
        
        $query = $this->db->get();
        return $query->row();
    }

    /**
     * Get lab order details (tests)
     */
    public function get_order_details($order_id) {
        $this->db->select('lod.*, CONCAT(u.first_name, " ", u.last_name) as performed_by_name');
        $this->db->from('lab_order_details lod');
        $this->db->join('users u', 'u.user_id = lod.performed_by', 'left');
        $this->db->where('lod.order_id', $order_id);
        $this->db->order_by('lod.detail_id', 'ASC');
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Create lab order
     */
    public function create_order($data) {
        // Generate unique order number
        $data['order_number'] = $this->generate_order_number();
        
        $this->db->insert('lab_orders', $data);
        return $this->db->insert_id();
    }

    /**
     * Update lab order
     */
    public function update_order($order_id, $data) {
        $this->db->where('order_id', $order_id);
        return $this->db->update('lab_orders', $data);
    }

    /**
     * Add lab order detail (test)
     */
    public function add_order_detail($data) {
        return $this->db->insert('lab_order_details', $data);
    }

    /**
     * Update lab order detail
     */
    public function update_order_detail($detail_id, $data) {
        $this->db->where('detail_id', $detail_id);
        return $this->db->update('lab_order_details', $data);
    }

    /**
     * Delete lab order detail
     */
    public function delete_order_detail($detail_id) {
        $this->db->where('detail_id', $detail_id);
        return $this->db->delete('lab_order_details');
    }

    /**
     * Delete all lab order details
     */
    public function delete_all_order_details($order_id) {
        $this->db->where('order_id', $order_id);
        return $this->db->delete('lab_order_details');
    }

    /**
     * Generate unique order number
     */
    private function generate_order_number() {
        $prefix = 'LAB-' . date('Y') . '-';
        
        $this->db->select('order_number');
        $this->db->from('lab_orders');
        $this->db->like('order_number', $prefix, 'after');
        $this->db->order_by('order_id', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get();
        
        if ($query->num_rows() > 0) {
            $last_number = $query->row()->order_number;
            $last_sequence = (int)substr($last_number, -4);
            $new_sequence = $last_sequence + 1;
        } else {
            $new_sequence = 1;
        }
        
        return $prefix . str_pad($new_sequence, 4, '0', STR_PAD_LEFT);
    }

    /**
     * Get pending orders (for lab technicians)
     */
    public function get_pending_orders($limit = 10) {
        $this->db->select('lo.*, 
                          CONCAT(p.first_name, " ", p.last_name) as patient_name,
                          p.patient_code,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('lab_orders lo');
        $this->db->join('patients p', 'p.patient_id = lo.patient_id', 'left');
        $this->db->join('users u', 'u.user_id = lo.ordered_by', 'left');
        $this->db->where_in('lo.status', array('Pending', 'Sample-Collected', 'In-Progress'));
        $this->db->order_by('lo.priority', 'DESC'); // Urgent/STAT first
        $this->db->order_by('lo.order_date', 'ASC');
        $this->db->limit($limit);
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Get lab order statistics
     */
    public function get_order_stats() {
        $stats = array();
        
        // Total
        $stats['total'] = $this->db->count_all('lab_orders');
        
        // Today
        $this->db->where('DATE(order_date)', date('Y-m-d'));
        $stats['today'] = $this->db->count_all_results('lab_orders');
        
        // Pending
        $this->db->where('status', 'Pending');
        $stats['pending'] = $this->db->count_all_results('lab_orders');
        
        // In Progress
        $this->db->where('status', 'In-Progress');
        $stats['in_progress'] = $this->db->count_all_results('lab_orders');
        
        // Completed
        $this->db->where('status', 'Completed');
        $stats['completed'] = $this->db->count_all_results('lab_orders');
        
        // This month
        $this->db->where('MONTH(order_date)', date('m'));
        $this->db->where('YEAR(order_date)', date('Y'));
        $stats['this_month'] = $this->db->count_all_results('lab_orders');
        
        return $stats;
    }

    /**
     * Get orders by patient
     */
    public function get_patient_orders($patient_id) {
        $this->db->select('lo.*, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('lab_orders lo');
        $this->db->join('users u', 'u.user_id = lo.ordered_by', 'left');
        $this->db->where('lo.patient_id', $patient_id);
        $this->db->order_by('lo.order_date', 'DESC');
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Update test result
     */
    public function update_test_result($detail_id, $result_data) {
        $this->db->where('detail_id', $detail_id);
        $result_data['result_date'] = date('Y-m-d H:i:s');
        return $this->db->update('lab_order_details', $result_data);
    }

    /**
     * Mark order as completed if all tests are done
     */
    public function check_and_complete_order($order_id) {
        // Check if all tests have results
        $this->db->where('order_id', $order_id);
        $this->db->where('(result IS NULL OR result = "")');
        $incomplete = $this->db->count_all_results('lab_order_details');
        
        if ($incomplete == 0) {
            // All tests completed, update order status
            $this->db->where('order_id', $order_id);
            return $this->db->update('lab_orders', array('status' => 'Completed'));
        }
        
        return false;
    }
}
