<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vitals extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        $this->load->model('Vital_model');
        $this->load->model('Patient_model');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->library('template');
        $this->load->library('permission1');
        
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
            $this->permission1->module('vitals')->redirect();
        }
    }
    
    /**
     * List vitals
     */
    public function index() {
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
            $this->permission1->method('vitals', 'read')->redirect();
        }
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Vital Signs';
        
        $config['base_url'] = base_url('vitals/index');
        $config['total_rows'] = $this->Vital_model->count_vitals();
        $config['per_page'] = 20;
        $this->pagination->initialize($config);
        
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data['vitals'] = $this->Vital_model->get_all_vitals($config['per_page'], $page);
        $data['pagination'] = $this->pagination->create_links();
        
        $content = $CI->load->view('clinic/vitals/index', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Record vitals
     */
    public function record($patient_id = null) {
        $this->permission1->method('vitals', 'create')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Record Vital Signs';
        $data['patient_id'] = $patient_id;
        
        if ($patient_id) {
            $data['patient'] = $this->Patient_model->get_patient($patient_id);
            if (!$data['patient']) {
                show_404();
            }
        }
        
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('patient_id', 'Patient', 'required|numeric');
            
            if ($this->form_validation->run()) {
                $bp_systolic = $this->input->post('bp_systolic');
                $bp_diastolic = $this->input->post('bp_diastolic');
                
                // Build blood_pressure string for existing column structure
                $blood_pressure = '';
                if (!empty($bp_systolic) && !empty($bp_diastolic)) {
                    $blood_pressure = $bp_systolic . '/' . $bp_diastolic;
                } elseif (!empty($bp_systolic)) {
                    $blood_pressure = $bp_systolic . '/';
                } elseif (!empty($bp_diastolic)) {
                    $blood_pressure = '/' . $bp_diastolic;
                }
                
                $vital_data = array(
                    'patient_id' => $this->input->post('patient_id'),
                    'appointment_id' => $this->input->post('appointment_id'),
                    'temperature' => $this->input->post('temperature'),
                    'blood_pressure' => !empty($blood_pressure) ? $blood_pressure : null,
                    'pulse' => $this->input->post('pulse'),
                    'respiratory_rate' => $this->input->post('respiratory_rate'),
                    'trauma' => $this->input->post('trauma'),
                    'weight' => $this->input->post('weight'),
                    'height' => $this->input->post('height'),
                    'oxygen_saturation' => $this->input->post('oxygen_saturation'),
                    'avpu' => $this->input->post('avpu'),
                    'mobility' => $this->input->post('mobility'),
                    'blood_sugar' => $this->input->post('blood_sugar'),
                    'notes' => $this->input->post('notes'),
                    'recorded_by' => $this->session->userdata('user_id')
                );
                
                if ($this->Vital_model->record_vitals($vital_data)) {
                    $this->session->set_flashdata('message', 'Vital signs recorded successfully');
                    redirect('vitals/history/' . $this->input->post('patient_id'));
                } else {
                    $this->session->set_flashdata('error_message', 'Failed to record vital signs');
                }
            }
        }
        
        $data['patients'] = $this->Patient_model->get_all_patients(1000, 0);
        
        $content = $CI->load->view('clinic/vitals/record', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * View patient vital history
     */
    public function history($patient_id) {
        $this->permission1->method('vitals', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['patient'] = $this->Patient_model->get_patient($patient_id);
        
        if (!$data['patient']) {
            show_404();
        }
        
        $data['title'] = 'Vital Signs History - ' . $data['patient']->first_name . ' ' . $data['patient']->last_name;
        $data['vitals'] = $this->Vital_model->get_patient_vitals($patient_id, 50);
        
        $content = $CI->load->view('clinic/vitals/history', $data, true);
        $this->template->full_admin_html_view($content);
    }
}




