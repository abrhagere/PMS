<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Prescriptions extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        // Load required models
        $this->load->model('Prescription_model');
        $this->load->model('Patient_model');
        
        // Load libraries
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->library('pagination');
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
            $this->permission1->module('prescriptions')->redirect();
        }
    }
    
    /**
     * List all prescriptions
     */
    public function index() {
        // Check read permission
        $this->permission1->method('prescriptions', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Prescriptions';
        
        // Pagination
        $config['base_url'] = base_url('prescriptions');
        $config['total_rows'] = $this->Prescription_model->count_prescriptions();
        $config['per_page'] = 20;
        $config['uri_segment'] = 2;
        $this->pagination->initialize($config);
        
        $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        
        // Get prescriptions
        $data['prescriptions'] = $this->Prescription_model->get_all_prescriptions($config['per_page'], $page);
        $data['pagination'] = $this->pagination->create_links();
        
        // Load view
        $content = $CI->load->view('clinic/prescriptions/list', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Create new prescription
     */
    public function create($patient_id = null) {
        // Check create permission
        $this->permission1->method('prescriptions', 'create')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Create Prescription';
        
        if ($patient_id) {
            $data['patient'] = $this->Patient_model->get_patient($patient_id);
        }
        
        // Load view
        $content = $CI->load->view('clinic/prescriptions/create', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * View prescription details
     */
    public function view($prescription_id) {
        // Check read permission
        $this->permission1->method('prescriptions', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        
        // Get prescription
        $data['prescription'] = $this->Prescription_model->get_prescription($prescription_id);
        
        if (!$data['prescription']) {
            show_404();
        }
        
        // Get prescription details (medicines)
        $data['prescription_details'] = $this->Prescription_model->get_prescription_details($prescription_id);
        
        $data['title'] = 'Prescription - ' . $data['prescription']->prescription_number;
        
        // Load view
        $content = $CI->load->view('clinic/prescriptions/view', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Print prescription
     */
    public function print($prescription_id) {
        // Check read permission
        $this->permission1->method('prescriptions', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        
        // Get prescription
        $data['prescription'] = $this->Prescription_model->get_prescription($prescription_id);
        
        if (!$data['prescription']) {
            show_404();
        }
        
        // Get prescription details
        $data['prescription_details'] = $this->Prescription_model->get_prescription_details($prescription_id);
        
        // Load print view
        $this->load->view('clinic/prescriptions/print', $data);
    }
}
