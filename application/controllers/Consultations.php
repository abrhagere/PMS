<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Consultations extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        // Load required models
        $this->load->model('Consultation_model');
        $this->load->model('Patient_model');
        $this->load->model('Appointment_model');
        
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
        
        // Check module access permission
        $this->permission1->module('consultations')->redirect();
    }
    
    /**
     * List consultations
     */
    public function index() {
        $this->permission1->method('consultations', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Consultations';
        
        // Pagination
        $config['base_url'] = base_url('consultations/index');
        $config['total_rows'] = $this->Consultation_model->count_consultations();
        $config['per_page'] = 20;
        $config['uri_segment'] = 3;
        
        // Pagination styling
        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['attributes'] = array('class' => 'page-link');
        
        $this->pagination->initialize($config);
        
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $search = $this->input->get('search');
        
        $data['consultations'] = $this->Consultation_model->get_all_consultations($config['per_page'], $page, $search);
        $data['pagination'] = $this->pagination->create_links();
        $data['stats'] = $this->Consultation_model->get_consultation_stats();
        
        $content = $CI->load->view('clinic/consultations/list', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Create consultation
     */
    public function create($appointment_id = null) {
        $this->permission1->method('consultations', 'create')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Create Consultation';
        $data['appointment_id'] = $appointment_id;
        
        // Get appointment details if provided
        if ($appointment_id) {
            $data['appointment'] = $this->Appointment_model->get_appointment($appointment_id);
            if (!$data['appointment']) {
                show_404();
            }
        }
        
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('patient_id', 'Patient', 'required|numeric');
            $this->form_validation->set_rules('chief_complaint', 'Chief Complaint', 'required');
            $this->form_validation->set_rules('diagnosis', 'Diagnosis', 'required');
            
            if ($this->form_validation->run()) {
                $consultation_data = array(
                    'patient_id' => $this->input->post('patient_id'),
                    'appointment_id' => $appointment_id,
                    'doctor_id' => $this->session->userdata('user_id'),
                    'chief_complaint' => $this->input->post('chief_complaint'),
                    'history_present_illness' => $this->input->post('history_present_illness'),
                    'physical_examination' => $this->input->post('physical_examination'),
                    'diagnosis' => $this->input->post('diagnosis'),
                    'treatment_plan' => $this->input->post('treatment_plan'),
                    'follow_up_date' => $this->input->post('follow_up_date'),
                    'follow_up_instructions' => $this->input->post('follow_up_instructions'),
                    'status' => $this->input->post('status', 'Completed')
                );
                
                if ($this->Consultation_model->create_consultation($consultation_data)) {
                    $consultation_id = $this->db->insert_id();
                    
                    // Update appointment status to completed if from appointment
                    if ($appointment_id) {
                        $this->Appointment_model->update_appointment($appointment_id, array('status' => 'Completed'));
                    }
                    
                    $this->session->set_flashdata('message', 'Consultation created successfully');
                    redirect('consultations/view/' . $consultation_id);
                } else {
                    $this->session->set_flashdata('error_message', 'Failed to create consultation');
                }
            }
        }
        
        // Get patients if not from appointment
        if (!$appointment_id) {
            $data['patients'] = $this->Patient_model->get_all_patients(1000, 0);
        }
        
        $content = $CI->load->view('clinic/consultations/create', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * View consultation
     */
    public function view($consultation_id) {
        $this->permission1->method('consultations', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['consultation'] = $this->Consultation_model->get_consultation($consultation_id);
        
        if (!$data['consultation']) {
            show_404();
        }
        
        $data['title'] = 'Consultation - ' . $data['consultation']->consultation_number;
        
        $content = $CI->load->view('clinic/consultations/view', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Edit consultation
     */
    public function edit($consultation_id) {
        $this->permission1->method('consultations', 'update')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['consultation'] = $this->Consultation_model->get_consultation($consultation_id);
        
        if (!$data['consultation']) {
            show_404();
        }
        
        $data['title'] = 'Edit Consultation';
        
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('chief_complaint', 'Chief Complaint', 'required');
            $this->form_validation->set_rules('diagnosis', 'Diagnosis', 'required');
            
            if ($this->form_validation->run()) {
                $update_data = array(
                    'chief_complaint' => $this->input->post('chief_complaint'),
                    'history_present_illness' => $this->input->post('history_present_illness'),
                    'physical_examination' => $this->input->post('physical_examination'),
                    'diagnosis' => $this->input->post('diagnosis'),
                    'treatment_plan' => $this->input->post('treatment_plan'),
                    'follow_up_date' => $this->input->post('follow_up_date'),
                    'follow_up_instructions' => $this->input->post('follow_up_instructions'),
                    'status' => $this->input->post('status')
                );
                
                if ($this->Consultation_model->update_consultation($consultation_id, $update_data)) {
                    $this->session->set_flashdata('message', 'Consultation updated successfully');
                    redirect('consultations/view/' . $consultation_id);
                } else {
                    $this->session->set_flashdata('error_message', 'Failed to update consultation');
                }
            }
        }
        
        $content = $CI->load->view('clinic/consultations/edit', $data, true);
        $this->template->full_admin_html_view($content);
    }
}









