<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vital_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     * Get the timestamp column name (recorded_date or recorded_at)
     */
    private function get_timestamp_column() {
        $columns = $this->db->list_fields('patient_vitals');
        if (in_array('recorded_date', $columns)) {
            return 'recorded_date';
        } elseif (in_array('recorded_at', $columns)) {
            return 'recorded_at';
        } else {
            // Fallback to recorded_date
            return 'recorded_date';
        }
    }

    /**
     * Get all vitals
     */
    public function get_all_vitals($limit, $offset) {
        $timestamp_col = $this->get_timestamp_column();
        
        $this->db->select('v.*, 
                          CONCAT(p.first_name, " ", p.last_name) as patient_name,
                          p.patient_code,
                          CONCAT(u.first_name, " ", u.last_name) as recorded_by_name');
        $this->db->from('patient_vitals v');
        $this->db->join('patients p', 'p.patient_id = v.patient_id');
        $this->db->join('users u', 'u.user_id = v.recorded_by', 'left');
        $this->db->order_by('v.' . $timestamp_col, 'DESC');
        $this->db->limit($limit, $offset);
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Record vital signs
     */
    public function record_vitals($data) {
        // Calculate BMI if height and weight provided
        if (!empty($data['height']) && !empty($data['weight'])) {
            $height_m = $data['height'] / 100; // convert cm to meters
            $data['bmi'] = round($data['weight'] / ($height_m * $height_m), 2);
        }
        
        // Get existing columns in the table
        $existing_columns = $this->db->list_fields('patient_vitals');
        $existing_columns = array_flip($existing_columns); // Convert to associative array for faster lookup
        
        // Filter out empty strings and only include columns that exist in the table
        $clean_data = array();
        foreach ($data as $key => $value) {
            // Skip if column doesn't exist
            if (!isset($existing_columns[$key])) {
                continue;
            }
            
            // Skip empty strings for optional fields
            if ($value === '') {
                continue;
            }
            
            $clean_data[$key] = $value;
        }
        
        return $this->db->insert('patient_vitals', $clean_data);
    }

    /**
     * Get vitals for patient
     */
    public function get_patient_vitals($patient_id, $limit = 10) {
        $timestamp_col = $this->get_timestamp_column();
        
        $this->db->select('v.*, CONCAT(u.first_name, " ", u.last_name) as recorded_by_name');
        $this->db->from('patient_vitals v');
        $this->db->join('users u', 'u.user_id = v.recorded_by', 'left');
        $this->db->where('v.patient_id', $patient_id);
        $this->db->order_by('v.' . $timestamp_col, 'DESC');
        $this->db->limit($limit);
        
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * Count vitals
     */
    public function count_vitals() {
        return $this->db->count_all('patient_vitals');
    }
}




