<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lab_tests extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        
        // Load models
        $this->load->model('Lab_test_model');
        
        // Load libraries
        $this->load->library('template');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->library('pagination');
        
        // Check if user is logged in
        if (!$this->session->userdata('user_id')) {
            redirect('Admin_dashboard/login');
        }
    }
    
    /**
     * List all lab tests
     */
    public function index() {
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Lab Tests Management';
        
        // Pagination
        $config['base_url'] = base_url('lab_tests/index');
        $config['total_rows'] = $this->Lab_test_model->count_tests();
        $config['per_page'] = 20;
        $config['uri_segment'] = 3;
        $this->pagination->initialize($config);
        
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        
        // Get tests
        $data['tests'] = $this->Lab_test_model->get_all_tests($config['per_page'], $page);
        $data['categories'] = $this->Lab_test_model->get_categories();
        $data['pagination'] = $this->pagination->create_links();
        
        $content = $CI->load->view('clinic/lab/tests_list', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Add new lab test
     */
    public function add() {
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Add New Lab Test';
        $data['categories'] = $this->Lab_test_model->get_categories();
        
        if ($this->input->post('submit')) {
            // Validation rules
            $this->form_validation->set_rules('test_name', 'Test Name', 'required|trim');
            $this->form_validation->set_rules('test_category', 'Category', 'trim');
            $this->form_validation->set_rules('price', 'Price', 'numeric|trim');
            
            if ($this->form_validation->run() == TRUE) {
                $test_data = array(
                    'test_name' => $this->input->post('test_name'),
                    'test_code' => $this->input->post('test_code'),
                    'test_category' => $this->input->post('test_category'),
                    'description' => $this->input->post('description'),
                    'normal_range' => $this->input->post('normal_range'),
                    'price' => $this->input->post('price') ? $this->input->post('price') : 0,
                    'status' => 1
                );
                
                if ($this->Lab_test_model->create_test($test_data)) {
                    $this->session->set_flashdata('message', 'Lab test added successfully!');
                    redirect('lab_tests');
                } else {
                    $data['error_message'] = 'Failed to add lab test. Please try again.';
                }
            }
        }
        
        $content = $CI->load->view('clinic/lab/test_add', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Edit lab test
     */
    public function edit($test_id) {
        $CI =& get_instance();
        $data = array();
        $data['title'] = 'Edit Lab Test';
        $data['test'] = $this->Lab_test_model->get_test($test_id);
        $data['categories'] = $this->Lab_test_model->get_categories();
        
        if (!$data['test']) {
            show_404();
        }
        
        if ($this->input->post('submit')) {
            // Validation rules
            $this->form_validation->set_rules('test_name', 'Test Name', 'required|trim');
            $this->form_validation->set_rules('test_category', 'Category', 'trim');
            $this->form_validation->set_rules('price', 'Price', 'numeric|trim');
            
            if ($this->form_validation->run() == TRUE) {
                $test_data = array(
                    'test_name' => $this->input->post('test_name'),
                    'test_code' => $this->input->post('test_code'),
                    'test_category' => $this->input->post('test_category'),
                    'description' => $this->input->post('description'),
                    'normal_range' => $this->input->post('normal_range'),
                    'price' => $this->input->post('price') ? $this->input->post('price') : 0,
                    'status' => $this->input->post('status') ? 1 : 0
                );
                
                if ($this->Lab_test_model->update_test($test_id, $test_data)) {
                    $this->session->set_flashdata('message', 'Lab test updated successfully!');
                    redirect('lab_tests');
                } else {
                    $data['error_message'] = 'Failed to update lab test. Please try again.';
                }
            }
        }
        
        $content = $CI->load->view('clinic/lab/test_edit', $data, true);
        $this->template->full_admin_html_view($content);
    }
    
    /**
     * Delete lab test
     */
    public function delete($test_id) {
        if ($this->Lab_test_model->delete_test($test_id)) {
            $this->session->set_flashdata('message', 'Lab test deleted successfully!');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to delete lab test.');
        }
        redirect('lab_tests');
    }
}


