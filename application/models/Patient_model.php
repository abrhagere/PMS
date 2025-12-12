<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Patient_model extends CI_Model {
    
    private $table = 'patients';
    
    public function __construct() {
        parent::__construct();
    }
    
    /**
     * Generate unique random 5-digit MRN (Medical Record Number)
     */
    public function generate_patient_code() {
        $max_attempts = 100;
        $attempt = 0;
        
        do {
            // Generate random 5-digit number (10000-99999)
            $mrn = rand(10000, 99999);
            
            // Check if this MRN already exists
            $this->db->where('patient_code', $mrn);
            $query = $this->db->get($this->table);
            
            if ($query->num_rows() == 0) {
                // MRN is unique, return it
                return (string)$mrn;
            }
            
            $attempt++;
        } while ($attempt < $max_attempts);
        
        // If we couldn't find a unique MRN after max attempts, use timestamp-based fallback
        return (string)(10000 + (time() % 90000));
    }
    
    /**
     * Create new patient
     * @return array Returns array with 'success' boolean and 'error' message if failed
     */
    public function create_patient($data) {
        // Generate patient code if not provided
        if (empty($data['patient_code'])) {
            $data['patient_code'] = $this->generate_patient_code();
        }
        
        // Check if patient_code already exists
        $this->db->where('patient_code', $data['patient_code']);
        $existing = $this->db->get($this->table)->row();
        if ($existing) {
            return array('success' => false, 'error' => 'Patient code (MRN) already exists. Please try again.');
        }
        
        // Set created by
        if (empty($data['created_by'])) {
            $data['created_by'] = $this->session->userdata('user_id');
        }
        
        // Set registered date
        if (empty($data['registered_date'])) {
            $data['registered_date'] = date('Y-m-d H:i:s');
        }
        
        // Set status to active (1) if not provided
        if (!isset($data['status'])) {
            $data['status'] = 1;
        }
        
        // Remove any fields that don't exist in the database
        $allowed_fields = array(
            'patient_code', 'first_name', 'middle_name', 'last_name', 'date_of_birth',
            'marital_status', 'age_years', 'age_months', 'age_days', 'gender',
            'blood_group', 'phone', 'patient_type', 'email', 'address',
            'country', 'region', 'zone', 'woreda', 'city', 'kebele',
            'house_number', 'emergency_contact', 'emergency_phone', 'national_id',
            'insurance_provider', 'insurance_number', 'allergies', 'chronic_conditions',
            'created_by', 'registered_date', 'status'
        );
        
        $filtered_data = array();
        foreach ($allowed_fields as $field) {
            if (isset($data[$field])) {
                $filtered_data[$field] = $data[$field];
            }
        }
        
        // Attempt to insert
        $insert_result = $this->db->insert($this->table, $filtered_data);
        
        if ($insert_result) {
            $patient_id = $this->db->insert_id();
            log_message('info', 'Patient created successfully with ID: ' . $patient_id);
            return array('success' => true, 'patient_id' => $patient_id);
        } else {
            $error = $this->db->error();
            log_message('error', 'Patient creation failed. Database error: ' . print_r($error, true));
            $error_message = 'Database error occurred. ';
            
            // Check for specific database errors
            if (!empty($error['message'])) {
                if (strpos($error['message'], 'Duplicate entry') !== false) {
                    if (strpos($error['message'], 'patient_code') !== false) {
                        $error_message = 'Patient code (MRN) already exists. ';
                    } elseif (strpos($error['message'], 'phone') !== false) {
                        $error_message = 'Phone number already exists. ';
                    } elseif (strpos($error['message'], 'email') !== false) {
                        $error_message = 'Email address already exists. ';
                    } elseif (strpos($error['message'], 'national_id') !== false) {
                        $error_message = 'National ID already exists. ';
                    }
                    $error_message .= 'Please use a different value.';
                } elseif (strpos($error['message'], 'foreign key') !== false) {
                    $error_message = 'Invalid reference data. Please check your input.';
                } else {
                    $error_message .= $error['message'];
                }
            } else {
                $error_message = 'Failed to register patient. Please check all required fields and try again.';
            }
            
            return array('success' => false, 'error' => $error_message);
        }
    }
    
    /**
     * Get patient by ID
     */
    public function get_patient($patient_id) {
        $this->db->select('p.*, 
                          CONCAT(p.first_name, " ", p.last_name) as full_name,
                          CONCAT(u.first_name, " ", u.last_name) as created_by_name');
        $this->db->from($this->table . ' p');
        $this->db->join('user_login ul', 'p.created_by = ul.user_id', 'left');
        $this->db->join('users u', 'ul.user_id = u.user_id', 'left');
        $this->db->where('p.patient_id', $patient_id);
        
        $query = $this->db->get();
        return $query->row();
    }
    
    /**
     * Get all patients with pagination
     */
    public function get_all_patients($limit = 20, $offset = 0, $search = '') {
        $this->db->select('p.*, 
                          CONCAT(p.first_name, " ", p.last_name) as full_name,
                          TIMESTAMPDIFF(YEAR, p.date_of_birth, CURDATE()) as age');
        $this->db->from($this->table . ' p');
        
        if (!empty($search)) {
            $this->db->group_start();
            $this->db->like('p.patient_code', $search); // MRN
            $this->db->or_like('p.phone', $search); // Phone number
            $this->db->group_end();
        }
        
        $this->db->where('p.status', 1);
        $this->db->order_by('p.patient_id', 'DESC');
        $this->db->limit($limit, $offset);
        
        $query = $this->db->get();
        return $query->result();
    }
    
    /**
     * Count all patients
     */
    public function count_patients($search = '') {
        $this->db->from($this->table);
        
        if (!empty($search)) {
            $this->db->group_start();
            $this->db->like('patient_code', $search); // MRN
            $this->db->or_like('phone', $search); // Phone number
            $this->db->group_end();
        }
        
        $this->db->where('status', 1);
        return $this->db->count_all_results();
    }
    
    /**
     * Update patient
     */
    public function update_patient($patient_id, $data) {
        $this->db->where('patient_id', $patient_id);
        return $this->db->update($this->table, $data);
    }
    
    /**
     * Search patients (for autocomplete/select)
     */
    public function search_patients($keyword, $limit = 10) {
        $this->db->select('patient_id, patient_code, 
                          CONCAT(first_name, " ", last_name) as full_name, 
                          phone, email');
        $this->db->from($this->table);
        $this->db->group_start();
        $this->db->like('patient_code', $keyword); // MRN
        $this->db->or_like('phone', $keyword); // Phone number
        $this->db->group_end();
        $this->db->where('status', 1);
        $this->db->limit($limit);
        
        $query = $this->db->get();
        return $query->result();
    }
    
    /**
     * Get patient statistics
     */
    public function get_patient_stats() {
        $stats = array();
        
        // Total patients
        $this->db->where('status', 1);
        $stats['total_patients'] = $this->db->count_all_results($this->table);
        
        // New patients today
        $this->db->where('DATE(registered_date)', date('Y-m-d'));
        $this->db->where('status', 1);
        $stats['new_today'] = $this->db->count_all_results($this->table);
        
        // New patients this month
        $this->db->where('MONTH(registered_date)', date('m'));
        $this->db->where('YEAR(registered_date)', date('Y'));
        $this->db->where('status', 1);
        $stats['new_this_month'] = $this->db->count_all_results($this->table);
        
        return $stats;
    }
    
    /**
     * Delete patient (soft delete)
     */
    public function delete_patient($patient_id) {
        $this->db->where('patient_id', $patient_id);
        return $this->db->update($this->table, array('status' => 0));
    }
    
    /**
     * Upload patient photo
     */
    public function upload_photo($patient_id) {
        $config['upload_path'] = './assets/images/patients/';
        $config['allowed_types'] = 'gif|jpg|jpeg|png';
        $config['max_size'] = 2048; // 2MB
        $config['file_name'] = 'patient_' . $patient_id . '_' . time();
        
        $this->load->library('upload', $config);
        
        if ($this->upload->do_upload('photo')) {
            $upload_data = $this->upload->data();
            $photo_path = 'assets/images/patients/' . $upload_data['file_name'];
            
            // Update patient record with photo path
            $this->db->where('patient_id', $patient_id);
            $this->db->update($this->table, array('photo' => $photo_path));
            
            return $photo_path;
        }
        
        return false;
    }
    
    /**
     * Get patient consultations
     */
    public function get_patient_consultations($patient_id, $limit = 10) {
        $this->db->select('c.*, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
        $this->db->from('consultations c');
        $this->db->join('users u', 'c.doctor_id = u.user_id', 'left');
        $this->db->where('c.patient_id', $patient_id);
        $this->db->order_by('c.consultation_date', 'DESC');
        $this->db->limit($limit);
        
        $query = $this->db->get();
        return $query->result();
    }
    
    /**
     * Get patient vitals
     */
    public function get_patient_vitals($patient_id, $limit = 10) {
        $this->db->select('v.*, CONCAT(u.first_name, " ", u.last_name) as recorded_by_name');
        $this->db->from('patient_vitals v');
        $this->db->join('users u', 'v.recorded_by = u.user_id', 'left');
        $this->db->where('v.patient_id', $patient_id);
        $this->db->order_by('v.recorded_at', 'DESC');
        $this->db->limit($limit);
        
        $query = $this->db->get();
        return $query->result();
    }
    
    /**
     * Get patient history
     */
    public function get_patient_history($patient_id) {
        $this->db->where('patient_id', $patient_id);
        $query = $this->db->get('patient_history');
        return $query->row();
    }
}

