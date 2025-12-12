<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lab_orders extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        // Load required models
        $this->load->model('Lab_order_model');
        $this->load->model('Lab_test_model');
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
            $this->permission1->module('lab_orders')->redirect();
        }
    }
    
    /**
     * List all lab orders
     */
    public function index() {
        // Check read permission
        $this->permission1->method('lab_orders', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Lab Orders';
        
        // Pagination
        $config['base_url'] = base_url('lab/orders');
        $config['total_rows'] = $this->Lab_order_model->count_orders();
        $config['per_page'] = 20;
        $config['uri_segment'] = 3;
        $this->pagination->initialize($config);
        
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        
        // Get lab orders
        $data['orders'] = $this->Lab_order_model->get_all_orders($config['per_page'], $page);
        $data['pagination'] = $this->pagination->create_links();
        
        // Load view
        $content = $CI->load->view('clinic/lab/orders_list', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Create new lab order (with optional patient ID)
     */
    public function create($patient_id = null) {
        // Check create permission
        $this->permission1->method('lab_orders', 'create')->redirect();
        
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'New Lab Order';
        
        // Handle form submission
        if ($this->input->post('submit')) {
            $patient_id = $this->input->post('patient_id');
            $priority = $this->input->post('priority');
            $clinical_notes = $this->input->post('clinical_notes');
            $test_ids = $this->input->post('test_ids');
            
            if (!$patient_id) {
                $this->session->set_flashdata('error_message', 'Please select a patient');
                redirect('lab/orders/new');
            }
            
            if (empty($test_ids) || !is_array($test_ids)) {
                $this->session->set_flashdata('error_message', 'Please select at least one lab test');
                redirect('lab/orders/new');
            }
            
            // Get test details
            $this->db->select('*');
            $this->db->from('lab_tests');
            $this->db->where_in('test_id', $test_ids);
            $tests = $this->db->get()->result();
            
            // Create lab order
            $order_data = array(
                'patient_id' => $patient_id,
                'ordered_by' => $this->session->userdata('user_id'),
                'priority' => $priority ? $priority : 'Normal',
                'notes' => $clinical_notes,
                'status' => 'Pending',
                'order_date' => date('Y-m-d H:i:s')
            );
            
            $order_id = $this->Lab_order_model->create_order($order_data);
            
            if ($order_id) {
                // Add test details
                foreach ($tests as $test) {
                    $detail_data = array(
                        'order_id' => $order_id,
                        'test_name' => $test->test_name,
                        'test_category' => $test->test_category,
                        'sample_type' => isset($test->sample_type) ? $test->sample_type : null
                    );
                    $this->Lab_order_model->add_order_detail($detail_data);
                }
                
                $this->session->set_flashdata('message', 'Lab order created successfully');
                redirect('lab/orders/view/' . $order_id);
            } else {
                $this->session->set_flashdata('error_message', 'Failed to create lab order. Please try again.');
                redirect('lab/orders/new');
            }
        }
        
        // Display form
        if ($patient_id) {
            $data['patient'] = $this->Patient_model->get_patient($patient_id);
        }
        
        // Get available lab tests
        if (class_exists('Lab_test_model')) {
            $data['lab_tests'] = $this->Lab_test_model->get_all_tests();
        } else {
            // Fallback: get from database directly
            $this->db->select('*');
            $this->db->from('lab_tests');
            $this->db->where('status', 1);
            $this->db->order_by('test_category', 'ASC');
            $this->db->order_by('test_name', 'ASC');
            $data['lab_tests'] = $this->db->get()->result();
        }
        
        // Load view
        $content = $CI->load->view('clinic/lab/orders_new', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * New lab order (alias for create without patient ID)
     */
    public function new_order() {
        $this->create();
    }
    
    /**
     * View lab order details
     */
    public function view($order_id) {
        // Check read permission
        $this->permission1->method('lab_orders', 'read')->redirect();
        
        $CI =& get_instance();
        $data = array();
        
        // Get lab order
        $data['order'] = $this->Lab_order_model->get_order($order_id);
        
        if (!$data['order']) {
            show_404();
        }
        
        // Get order details (tests)
        $data['order_details'] = $this->Lab_order_model->get_order_details($order_id);
        
        $data['title'] = 'Lab Order - ' . $data['order']->order_number;
        
        // Load view
        $content = $CI->load->view('clinic/lab/orders_view', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Enter lab results
     */
    public function results($order_id) {
        // Check update permission
        $this->permission1->method('lab_orders', 'update')->redirect();
        
        $CI =& get_instance();
        $data = array();
        
        // Get lab order
        $data['order'] = $this->Lab_order_model->get_order($order_id);
        
        if (!$data['order']) {
            show_404();
        }
        
        // Get order details (tests)
        $data['order_details'] = $this->Lab_order_model->get_order_details($order_id);
        
        $data['title'] = 'Enter Lab Results - ' . $data['order']->order_number;
        
        // Load view
        $content = $CI->load->view('clinic/lab/orders_results', $data, true);
        $this->template->full_admin_html_view($content);
    }
}
