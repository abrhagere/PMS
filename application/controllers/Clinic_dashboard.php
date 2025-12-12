<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clinic_dashboard extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        // Load models
        $this->load->model('Patient_model');
        
        // Load template library
        $this->load->library('template');
        
        // Check if user is logged in
        if (!$this->session->userdata('user_id')) {
            redirect('Admin_dashboard/login');
        }
    }
    
    /**
     * Main Clinic Dashboard
     */
    public function index() {
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Clinic Dashboard';
        
        // Get statistics
        $data['patient_stats'] = $this->get_patient_statistics();
        $data['appointment_stats'] = $this->get_appointment_statistics();
        $data['today_appointments'] = $this->get_today_appointments();
        
        // Get user role
        $data['user_role'] = $this->session->userdata('user_type');
        $data['user_name'] = $this->session->userdata('user_name');
        
        // Load dashboard view
        $content = $CI->parser->parse('clinic/dashboard/main', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Get patient statistics
     */
    private function get_patient_statistics() {
        $stats = array();
        
        // Total patients
        $this->db->where('status', 1);
        $stats['total'] = $this->db->count_all_results('patients');
        
        // New today
        $this->db->where('DATE(registered_date)', date('Y-m-d'));
        $this->db->where('status', 1);
        $stats['today'] = $this->db->count_all_results('patients');
        
        // New this week
        $this->db->where('WEEK(registered_date)', date('W'));
        $this->db->where('YEAR(registered_date)', date('Y'));
        $this->db->where('status', 1);
        $stats['this_week'] = $this->db->count_all_results('patients');
        
        // New this month
        $this->db->where('MONTH(registered_date)', date('m'));
        $this->db->where('YEAR(registered_date)', date('Y'));
        $this->db->where('status', 1);
        $stats['this_month'] = $this->db->count_all_results('patients');
        
        return $stats;
    }
    
    /**
     * Get appointment statistics
     */
    private function get_appointment_statistics() {
        $stats = array();
        
        // Today's appointments
        $this->db->where('appointment_date', date('Y-m-d'));
        $stats['today_total'] = $this->db->count_all_results('appointments');
        
        // Pending
        $this->db->where('appointment_date', date('Y-m-d'));
        $this->db->where_in('status', array('Scheduled', 'Confirmed'));
        $stats['today_pending'] = $this->db->count_all_results('appointments');
        
        // Completed
        $this->db->where('appointment_date', date('Y-m-d'));
        $this->db->where('status', 'Completed');
        $stats['today_completed'] = $this->db->count_all_results('appointments');
        
        // In progress
        $this->db->where('appointment_date', date('Y-m-d'));
        $this->db->where('status', 'In-Progress');
        $stats['today_in_progress'] = $this->db->count_all_results('appointments');
        
        return $stats;
    }
    
    /**
     * Get today's appointments
     */
    private function get_today_appointments() {
        $this->db->select('a.*, 
                          CONCAT(p.first_name, " ", p.last_name) as patient_name,
                          p.patient_code,
                          p.phone as patient_phone,
                          CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('appointments a');
        $this->db->join('patients p', 'a.patient_id = p.patient_id');
        $this->db->join('user_login ul', 'a.doctor_id = ul.user_id', 'left');
        $this->db->join('users u', 'ul.user_id = u.user_id', 'left');
        $this->db->where('a.appointment_date', date('Y-m-d'));
        $this->db->where_in('a.status', array('Scheduled', 'Confirmed', 'In-Progress'));
        $this->db->order_by('a.appointment_time', 'ASC');
        $this->db->limit(10);
        
        $query = $this->db->get();
        return $query->result();
    }
    
    /**
     * Quick statistics API (for AJAX)
     */
    public function quick_stats() {
        $stats = array(
            'patients' => $this->get_patient_statistics(),
            'appointments' => $this->get_appointment_statistics()
        );
        
        echo json_encode($stats);
    }
}

