<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Permission_model extends CI_Model {
	public function __construct(){
		parent::__construct();
	}
	//customer List
	public function permission_list(){
		$this->db->select('*');
		$this->db->from('module');
		$this->db->where('status',1);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();
		}
		return false;
	}
    public function module_list2(){
        $this->db->select('*');
        $this->db->from('module');
        $this->db->where('status',1);
      return  $query = $this->db->get()->result();
    }
    public function user_count(){
        $query = $this->db->query('select * from sec_role');  
        return $query->num_rows();
    }

	public function user_list(){
		$this->db->select('*');
		$this->db->from('sec_role');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
    public function user(){
        $this->db->select('*');
        $this->db->from('users');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function create($data = array()){
		if (empty($data) || !is_array($data) || !isset($data[0]['role_id'])) {
			return false;
		}
		
		$role_id = $data[0]['role_id'];
		
		// Delete existing permissions for this role
		$this->db->where('role_id', $role_id);
		$this->db->delete('role_permission');
		
		// Insert new permissions
		if (!empty($data)) {
			return $this->db->insert_batch('role_permission', $data);
		}
		
		return true; // If no permissions to add, deletion is still successful
	}
    public function role_create($postData = array()){
        $this->db->insert('sec_userrole',$postData);
    }
    public function insert_user_entry($data = array()){
        $this->db->insert('sec_role',$data);
        return $insert_id = $this->db->insert_id();
    }
    public function userdata_editdata($id){
        $this->db->select('*');
        $this->db->from('sec_role');
        $this->db->where('id',$id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }
    public function update_role($data,$id){
        $this->db->where('id',$id);
        $this->db->update('sec_role',$data);
        return true;
    }
    public function delete_role($id){
        $this->db->where('id',$id);
        $this->db->delete('sec_role');
        return true;
    }
    public function delete_role_permission($id){
        $this->db->where('role_id',$id);
        $this->db->delete('role_permission');
        return true;
    }
    public function module(){
        // Exclude standalone clinic modules since they're already under Clinic Management as sub-modules
        // Keep only Clinic Management (id 24) which contains all clinic modules as sub-modules
        $this->db->select('*');
        $this->db->from('module');
        $this->db->where('status', 1);
        // Exclude individual clinic modules that are duplicated in Clinic Management sub-modules
        $this->db->where_not_in('id', array(17, 18, 19, 20, 21, 22, 23)); // Patient Management, Appointments, Consultations, Vitals, Prescriptions, Lab Orders, Clinic Dashboard
        $this->db->order_by('name', 'ASC');
        return $this->db->get()->result();
    }
    public function role($id = null){
      return  $data = $this->db->select('*')
             ->from('sec_role')
             ->where('id',$id)
             ->get()
             ->result();
    }
    public function role_edit($id = null){
       return $roleAcc = $this->db->select('role_permission.*,sub_module.name')
            ->from('role_permission')
            ->join('sub_module','sub_module.id=role_permission.fk_module_id')
            ->where('role_permission.role_id',$id)
            ->get()
            ->result();
    }
    public function role_update($data,$id){
         
        $this->db->where('id',$id);
        $this->db->update('sec_role',$data);
        return true;
    }

}