<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clinic_reports extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        // Load models
        $this->load->model('Patient_model');
        $this->load->model('Lab_order_model');
        
        // Load libraries
        $this->load->library('template');
        $this->load->library('permission1');
        
        // Check if user is logged in
        if (!$this->session->userdata('user_id')) {
            redirect('Admin_dashboard/login');
        }
        
        // Check if user is a clinic role - if so, allow access even without explicit permission
        $user_id = $this->session->userdata('user_id');
        $is_clinic_role = false;
        
        if ($user_id) {
            // Convert user_id to string to match database format (sec_userrole.user_id is varchar)
            $user_id_str = (string)$user_id;
            
            $this->db->select('sr.type');
            $this->db->from('sec_userrole sur');
            $this->db->join('sec_role sr', 'sr.id = sur.roleid');
            $this->db->where('sur.user_id', $user_id_str);
            $this->db->where_in('sr.type', array('Reception', 'Doctor', 'Nurse', 'Lab Technician'));
            $query = $this->db->get();
            $is_clinic_role = $query->num_rows() > 0;
        }
        
        // Only check permission if not a clinic role (admin/manager need explicit permission)
        if (!$is_clinic_role) {
            $this->permission1->module('clinic_dashboard')->redirect();
        }
    }
    
    /**
     * Clinic Reports Dashboard
     */
    public function index() {
        $data = array();
        $data['title'] = 'Clinic Reports';
        
        // Get statistics
        $data['patient_stats'] = $this->get_patient_statistics();
        $data['appointment_stats'] = $this->get_appointment_statistics();
        
        // Get user role and info
        $data['user_role'] = $this->session->userdata('user_type');
        $data['user_name'] = $this->session->userdata('user_name');
        $data['user_id'] = $this->session->userdata('user_id');
        
        // Get lab orders based on user role
        $data['pending_lab_orders'] = array();
        
        // For Lab Technicians - show pending lab orders
        if ($this->is_lab_technician()) {
            $data['pending_lab_orders'] = $this->Lab_order_model->get_pending_orders(10);
        }
        
        // Load the reports view
        $data['content'] = $this->load->view('clinic/reports/dashboard', $data, true);
        $this->template->full_admin_html_view($data);
    }
    
    /**
     * Get patient statistics
     */
    private function get_patient_statistics() {
        $stats = array();
        
        // New patients today
        $this->db->select('COUNT(*) as count');
        $this->db->from('patients');
        $this->db->where('DATE(created_at)', date('Y-m-d'));
        $query = $this->db->get();
        $result = $query->row();
        $stats['today'] = $result ? $result->count : 0;
        
        return $stats;
    }
    
    /**
     * Get appointment statistics
     */
    private function get_appointment_statistics() {
        $stats = array();
        $today = date('Y-m-d');
        
        // Total appointments today
        $this->db->select('COUNT(*) as count');
        $this->db->from('appointments');
        $this->db->where('DATE(appointment_date)', $today);
        $query = $this->db->get();
        $result = $query->row();
        $stats['today_total'] = $result ? $result->count : 0;
        
        // In progress appointments today
        $this->db->select('COUNT(*) as count');
        $this->db->from('appointments');
        $this->db->where('DATE(appointment_date)', $today);
        $this->db->where('status', 'In-Progress');
        $query = $this->db->get();
        $result = $query->row();
        $stats['today_in_progress'] = $result ? $result->count : 0;
        
        // Completed appointments today
        $this->db->select('COUNT(*) as count');
        $this->db->from('appointments');
        $this->db->where('DATE(appointment_date)', $today);
        $this->db->where('status', 'Completed');
        $query = $this->db->get();
        $result = $query->row();
        $stats['today_completed'] = $result ? $result->count : 0;
        
        return $stats;
    }
    
    /**
     * Check if current user is a lab technician
     */
    private function is_lab_technician() {
        $user_id = $this->session->userdata('user_id');
        if (!$user_id) {
            return false;
        }
        
        // Convert user_id to string to match database format
        $user_id_str = (string)$user_id;
        
        $this->db->select('sr.type');
        $this->db->from('sec_userrole sur');
        $this->db->join('sec_role sr', 'sr.id = sur.roleid');
        $this->db->where('sur.user_id', $user_id_str);
        $this->db->where('sr.type', 'Lab Technician');
        $query = $this->db->get();
        
        return $query->num_rows() > 0;
    }
}








