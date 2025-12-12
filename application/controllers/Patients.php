<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Patients extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        // Load required models
        $this->load->model('Patient_model');
        $this->load->model('Appointment_model');
        $this->load->model('Consultation_model');
        $this->load->model('Vital_model');
        $this->load->model('Prescription_model');
        $this->load->model('Lab_order_model');
        
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
            $this->permission1->module('patients')->redirect();
        }
    }
    
    /**
     * List all patients
     */
    public function index() {
        // Check read permission
        $this->permission1->method('patients', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Patient Management';
        
        // Pagination configuration
        $config['base_url'] = base_url('patients/index');
        $config['total_rows'] = $this->Patient_model->count_patients();
        $config['per_page'] = 20;
        $config['uri_segment'] = 3;
        
        // Pagination styling
        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = 'First';
        $config['last_link'] = 'Last';
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '</li>';
        $config['attributes'] = array('class' => 'page-link');
        
        $this->pagination->initialize($config);
        
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $search = $this->input->get('search');
        
        $data['patients'] = $this->Patient_model->get_all_patients($config['per_page'], $page, $search);
        $data['pagination'] = $this->pagination->create_links();
        $data['search'] = $search;
        
        // Get statistics
        $data['stats'] = $this->Patient_model->get_patient_stats();
        
        $content = $CI->parser->parse('clinic/patients/list', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Add new patient
     */
    public function add() {
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
            $this->permission1->method('patients', 'create')->redirect();
        }
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Add New Patient';
        
        if ($this->input->post('submit')) {
            // Validation rules
            $this->form_validation->set_rules('first_name', 'First Name', 'required|max_length[100]');
            $this->form_validation->set_rules('last_name', 'Last Name', 'required|max_length[100]');
            $this->form_validation->set_rules('date_of_birth', 'Date of Birth', 'required');
            $this->form_validation->set_rules('gender', 'Gender', 'required');
            $this->form_validation->set_rules('phone', 'Phone', 'required|max_length[20]');
            $this->form_validation->set_rules('email', 'Email', 'valid_email|max_length[100]');
            
            if ($this->form_validation->run() === TRUE) {
                // Prepare data
                $patient_data = array(
                    'first_name' => $this->input->post('first_name'),
                    'middle_name' => $this->input->post('middle_name'),
                    'last_name' => $this->input->post('last_name'),
                    'date_of_birth' => $this->input->post('date_of_birth'),
                    'marital_status' => $this->input->post('marital_status'),
                    'age_years' => $this->input->post('age_years'),
                    'age_months' => $this->input->post('age_months'),
                    'age_days' => $this->input->post('age_days'),
                    'gender' => $this->input->post('gender'),
                    'blood_group' => $this->input->post('blood_group'),
                    'phone' => $this->input->post('phone'),
                    'patient_type' => $this->input->post('patient_type'),
                    'email' => $this->input->post('email'),
                    'address' => $this->input->post('address'),
                    'country' => $this->input->post('country'),
                    'region' => $this->input->post('region'),
                    'zone' => $this->input->post('zone'),
                    'woreda' => $this->input->post('woreda'),
                    'city' => $this->input->post('city'),
                    'kebele' => $this->input->post('kebele'),
                    'house_number' => $this->input->post('house_number'),
                    'emergency_contact' => $this->input->post('emergency_contact'),
                    'emergency_phone' => $this->input->post('emergency_phone'),
                    'national_id' => $this->input->post('national_id'),
                    'insurance_provider' => $this->input->post('insurance_provider'),
                    'insurance_number' => $this->input->post('insurance_number'),
                    'allergies' => $this->input->post('allergies'),
                    'chronic_conditions' => $this->input->post('chronic_conditions')
                );
                
                // Create patient
                $result = $this->Patient_model->create_patient($patient_data);
                
                if ($result['success']) {
                    $patient_id = $result['patient_id'];
                    
                    // Get the generated patient code (MRN) from database
                    $this->db->select('patient_code');
                    $this->db->from('patients');
                    $this->db->where('patient_id', $patient_id);
                    $patient = $this->db->get()->row();
                    
                    if ($patient) {
                        $this->session->set_flashdata('message', '✓ Patient registered successfully! MRN: <strong>' . $patient->patient_code . '</strong>');
                    } else {
                        $this->session->set_flashdata('message', '✓ Patient registered successfully!');
                    }
                    
                    redirect('patients');
                } else {
                    // Show specific error message - use userdata for same-page display
                    $this->session->set_userdata('error_message', '✗ Registration failed: ' . $result['error']);
                }
            } else {
                // Validation failed - errors will be shown by validation_errors() in view
                // Set error message to show at top of form - use userdata for same-page display
                if (validation_errors()) {
                    $this->session->set_userdata('error_message', 'Please correct the errors below and try again.');
                }
            }
        }
        
        $content = $CI->parser->parse('clinic/patients/add', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * View patient details
     */
    public function view($patient_id) {
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
            $this->permission1->method('patients', 'read')->redirect();
        }
        
        $CI =& get_instance();
        $data = array();
        $data['patient'] = $this->Patient_model->get_patient($patient_id);
        
        if (!$data['patient']) {
            show_404();
        }
        
        $data['title'] = 'Patient Profile - ' . $data['patient']->first_name . ' ' . $data['patient']->last_name;
        
        // Get patient related data
        $data['consultations'] = $this->Patient_model->get_patient_consultations($patient_id);
        $data['vitals'] = $this->Patient_model->get_patient_vitals($patient_id);
        $data['history'] = $this->Patient_model->get_patient_history($patient_id);
        
        // Get latest appointment/visit
        $this->db->select('a.*, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('appointments a');
        $this->db->join('users u', 'u.user_id = a.doctor_id', 'left');
        $this->db->where('a.patient_id', $patient_id);
        $this->db->order_by('a.appointment_date', 'DESC');
        $this->db->order_by('a.appointment_time', 'DESC');
        $this->db->limit(1);
        $data['latest_visit'] = $this->db->get()->row();
        
        // Get all appointments for this patient
        $this->db->select('a.*, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('appointments a');
        $this->db->join('users u', 'u.user_id = a.doctor_id', 'left');
        $this->db->where('a.patient_id', $patient_id);
        $this->db->order_by('a.appointment_date', 'DESC');
        $this->db->order_by('a.appointment_time', 'DESC');
        $data['appointments'] = $this->db->get()->result();
        
        // Get prescriptions
        if (class_exists('Prescription_model')) {
            $this->db->select('p.*, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
            $this->db->from('prescriptions p');
            $this->db->join('users u', 'u.user_id = p.doctor_id', 'left');
            $this->db->where('p.patient_id', $patient_id);
            $this->db->order_by('p.prescription_date', 'DESC');
            $data['prescriptions'] = $this->db->get()->result();
        }
        
        // Get lab orders
        if (class_exists('Lab_order_model')) {
            $this->db->select('l.*, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
            $this->db->from('lab_orders l');
            $this->db->join('users u', 'u.user_id = l.ordered_by', 'left');
            $this->db->where('l.patient_id', $patient_id);
            $this->db->order_by('l.order_date', 'DESC');
            $data['lab_orders'] = $this->db->get()->result();
        }
        
        // Use regular view loader instead of parser for object compatibility
        $content = $CI->load->view('clinic/patients/view', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Edit patient
     */
    public function edit($patient_id) {
        // Check update permission
        $this->permission1->method('patients', 'update')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['patient'] = $this->Patient_model->get_patient($patient_id);
        
        if (!$data['patient']) {
            show_404();
        }
        
        $data['title'] = 'Edit Patient - ' . $data['patient']->first_name . ' ' . $data['patient']->last_name;
        
        if ($this->input->post('submit')) {
            // Validation rules
            $this->form_validation->set_rules('first_name', 'First Name', 'required|max_length[100]');
            $this->form_validation->set_rules('last_name', 'Last Name', 'required|max_length[100]');
            $this->form_validation->set_rules('date_of_birth', 'Date of Birth', 'required');
            $this->form_validation->set_rules('gender', 'Gender', 'required');
            $this->form_validation->set_rules('phone', 'Phone', 'required|max_length[20]');
            
            if ($this->form_validation->run() === TRUE) {
                // Prepare data
                $patient_data = array(
                    'first_name' => $this->input->post('first_name'),
                    'middle_name' => $this->input->post('middle_name'),
                    'last_name' => $this->input->post('last_name'),
                    'date_of_birth' => $this->input->post('date_of_birth'),
                    'marital_status' => $this->input->post('marital_status'),
                    'age_years' => $this->input->post('age_years'),
                    'age_months' => $this->input->post('age_months'),
                    'age_days' => $this->input->post('age_days'),
                    'gender' => $this->input->post('gender'),
                    'blood_group' => $this->input->post('blood_group'),
                    'phone' => $this->input->post('phone'),
                    'patient_type' => $this->input->post('patient_type'),
                    'email' => $this->input->post('email'),
                    'address' => $this->input->post('address'),
                    'country' => $this->input->post('country'),
                    'region' => $this->input->post('region'),
                    'zone' => $this->input->post('zone'),
                    'woreda' => $this->input->post('woreda'),
                    'city' => $this->input->post('city'),
                    'kebele' => $this->input->post('kebele'),
                    'house_number' => $this->input->post('house_number'),
                    'emergency_contact' => $this->input->post('emergency_contact'),
                    'emergency_phone' => $this->input->post('emergency_phone'),
                    'national_id' => $this->input->post('national_id'),
                    'insurance_provider' => $this->input->post('insurance_provider'),
                    'insurance_number' => $this->input->post('insurance_number'),
                    'allergies' => $this->input->post('allergies'),
                    'chronic_conditions' => $this->input->post('chronic_conditions')
                );
                
                // Update patient
                if ($this->Patient_model->update_patient($patient_id, $patient_data)) {
                    // Handle photo upload
                    if (!empty($_FILES['photo']['name'])) {
                        $this->Patient_model->upload_photo($patient_id);
                    }
                    
                    $this->session->set_flashdata('message', 'Patient updated successfully');
                    redirect('patients/view/' . $patient_id);
                } else {
                    $this->session->set_flashdata('error_message', 'Failed to update patient');
                }
            }
        }
        
        $content = $CI->parser->parse('clinic/patients/edit', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Delete patient
     */
    public function delete($patient_id) {
        // Check delete permission
        $this->permission1->method('patients', 'delete')->redirect();
        
        if ($this->Patient_model->delete_patient($patient_id)) {
            $this->session->set_flashdata('message', 'Patient deleted successfully');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to delete patient');
        }
        redirect('patients');
    }
    
    /**
     * Search patients (AJAX)
     */
    public function search() {
        // Check read permission for search
        $this->permission1->method('patients', 'read')->redirect();
        
        $keyword = $this->input->get('q');
        $patients = $this->Patient_model->search_patients($keyword);
        
        $result = array();
        foreach ($patients as $patient) {
            $result[] = array(
                'id' => $patient->patient_id,
                'text' => $patient->patient_code . ' - ' . $patient->full_name . ' (' . $patient->phone . ')'
            );
        }
        
        echo json_encode($result);
    }
    
    /**
     * Print patient card
     */
    public function print_card($patient_id) {
        $data['patient'] = $this->Patient_model->get_patient($patient_id);
        
        if (!$data['patient']) {
            show_404();
        }
        
        $this->load->view('clinic/patients/print_card', $data);
    }
}

