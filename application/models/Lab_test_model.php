<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lab_test_model extends CI_Model {

    private $table = 'lab_tests';

    public function __construct() {
        parent::__construct();
    }

    /**
     * Get all lab tests
     */
    public function get_all_tests($limit = 20, $offset = 0, $search = null, $filter = array()) {
        $this->db->from($this->table);
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('test_name', $search);
            $this->db->or_like('test_code', $search);
            $this->db->or_like('test_category', $search);
            $this->db->or_like('description', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['category'])) {
            $this->db->where('test_category', $filter['category']);
        }
        
        if (!empty($filter['status'])) {
            $this->db->where('status', $filter['status']);
        } else {
            $this->db->where('status', 1); // Only active by default
        }
        
        $this->db->order_by('test_category', 'ASC');
        $this->db->order_by('test_name', 'ASC');
        $this->db->limit($limit, $offset);
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Count lab tests
     */
    public function count_tests($search = null, $filter = array()) {
        $this->db->from($this->table);
        
        if ($search) {
            $this->db->group_start();
            $this->db->like('test_name', $search);
            $this->db->or_like('test_code', $search);
            $this->db->or_like('test_category', $search);
            $this->db->group_end();
        }
        
        if (!empty($filter['category'])) {
            $this->db->where('test_category', $filter['category']);
        }
        
        if (!empty($filter['status'])) {
            $this->db->where('status', $filter['status']);
        } else {
            $this->db->where('status', 1);
        }
        
        return $this->db->count_all_results();
    }

    /**
     * Get single test
     */
    public function get_test($test_id) {
        $this->db->where('test_id', $test_id);
        $query = $this->db->get($this->table);
        return $query->row();
    }

    /**
     * Get tests by category
     */
    public function get_tests_by_category($category) {
        $this->db->where('test_category', $category);
        $this->db->where('status', 1);
        $this->db->order_by('test_name', 'ASC');
        $query = $this->db->get($this->table);
        return $query->result();
    }

    /**
     * Get all categories
     */
    public function get_categories() {
        $this->db->select('test_category');
        $this->db->distinct();
        $this->db->from($this->table);
        $this->db->where('status', 1);
        $this->db->where('test_category IS NOT NULL');
        $this->db->where('test_category !=', '');
        $this->db->order_by('test_category', 'ASC');
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Create test
     */
    public function create_test($data) {
        // Generate test code if not provided
        if (empty($data['test_code'])) {
            $data['test_code'] = $this->generate_test_code($data['test_name']);
        }
        
        // Set status to active if not provided
        if (!isset($data['status'])) {
            $data['status'] = 1;
        }
        
        return $this->db->insert($this->table, $data);
    }

    /**
     * Update test
     */
    public function update_test($test_id, $data) {
        $this->db->where('test_id', $test_id);
        return $this->db->update($this->table, $data);
    }

    /**
     * Delete test (soft delete)
     */
    public function delete_test($test_id) {
        $this->db->where('test_id', $test_id);
        return $this->db->update($this->table, array('status' => 0));
    }

    /**
     * Generate test code from test name
     */
    private function generate_test_code($test_name) {
        // Create code from first letters of words
        $words = explode(' ', strtoupper($test_name));
        $code = '';
        foreach ($words as $word) {
            if (!empty($word)) {
                $code .= substr($word, 0, 1);
            }
        }
        
        // Add random number if code is too short
        if (strlen($code) < 3) {
            $code .= rand(100, 999);
        }
        
        // Check if code exists, if so add number
        $this->db->where('test_code', $code);
        $exists = $this->db->get($this->table)->num_rows() > 0;
        
        if ($exists) {
            $code .= '-' . rand(10, 99);
        }
        
        return $code;
    }
}


