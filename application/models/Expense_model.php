<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Expense_model extends CI_Model {

     public function expense_insert(){
           $voucher_no = date('Ymdhis');
            $Vtype="Expense";
            $expense_type = $this->input->post('expense_type');
            $pay_type = $this->input->post('paytype');
            $cAID     = $this->input->post('cmbDebit');
            $Credit   = $this->input->post('amount');
            $VDate    = $this->input->post('dtpDate');
            $Narration=addslashes(trim($this->input->post('txtRemarks')));
            $IsPosted=1;
            $IsAppove=1;
            $CreateBy=$this->session->userdata('user_id');
            $createdate=date('Y-m-d H:i:s');
           $coid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName',$expense_type)->get()->row()->HeadCode;
           $bank_id = $this->input->post('bank_id');

   $bankname = $this->db->select('bank_name')->from('bank_add')->where('bank_id',$bank_id)->get()->row()->bank_name;
       $coaid = $this->db->select('HeadCode')->from('acc_coa')->where('HeadName',$bankname)->get()->row()->HeadCode;
       // bank summary credit
        $data = array(
            'date'        => $VDate,
            'ac_type'     => 'Credit (-)',
            'bank_id'     => $bank_id,
            'description' => $expense_type.' Expense',
            'deposite_id' => $voucher_no,
            'dr'          =>  null,
            'cr'          => (!empty($Credit) ? $Credit : null),
            'ammount'     => $Credit,
            'status'      => 1
        );


            $expense = array(
      'voucher_no'     =>  $voucher_no,
      'type'           =>  $expense_type,
      'date'           =>  $VDate,
      'amount'         =>  $Credit,
    ); 
         // expense type credit  
     $expense_acc = array(
      'VNo'            =>  $voucher_no,
      'Vtype'          =>  $Vtype,
      'VDate'          =>  $VDate,
      'COAID'          =>  $coid,
      'Narration'      =>  $expense_type.' Expense '.$voucher_no,
      'Debit'          =>  $Credit,
      'Credit'         =>  0,
      'IsPosted'       =>  1,
      'CreateBy'       =>  $CreateBy,
      'CreateDate'     =>  $createdate,
      'IsAppove'       =>  1
    ); 
     // bank credit
      $bankexpense = array(
      'VNo'            =>  $voucher_no,
      'Vtype'          =>  $Vtype,
      'VDate'          =>  $VDate,
      'COAID'          =>  $coaid,
      'Narration'      =>  $bankname.' Expense '.$voucher_no,
      'Debit'          =>  0,
      'Credit'         =>  $Credit,
      'IsPosted'       =>  1,
      'CreateBy'       =>  $CreateBy,
      'CreateDate'     =>  $createdate,
      'IsAppove'       =>  1
    );
      // cash in hand credit
           $cashinhand = array(
      'VNo'            =>  $voucher_no,
      'Vtype'          =>  $Vtype,
      'VDate'          =>  $VDate,
      'COAID'          =>  1020101,
      'Narration'      => $expense_type.' Expense'.$voucher_no,
      'Debit'          =>  0,
      'Credit'         =>  $Credit,
      'IsPosted'       =>  1,
      'CreateBy'       =>  $CreateBy,
      'CreateDate'     =>  $createdate,
      'IsAppove'       =>  1
    ); 

          // print_r($expense_acc);exit();
              $this->db->insert('expense',$expense);
              $this->db->insert('acc_transaction',$expense_acc);

               
                if($pay_type == 1){
                $this->db->insert('acc_transaction',$cashinhand);  
              }else{
                $this->db->insert('bank_summary', $data);
                $this->db->insert('acc_transaction',$bankexpense);
              }
               


    return true;
}

        public function expense_list($limit = null, $start = null)
    {
             return $this->db->select('*')   
            ->from('expense')
            ->order_by('id', 'desc')
            ->limit($limit, $start)
            ->get()
            ->result_array();
    }

        public function expense_delete($voucher_no = null)
{
    if ($voucher_no === null) {
        show_error("Missing voucher number", 400);
        return false;
    }

    // Delete the expense record where voucher_no matches
    $this->db->where('voucher_no', $voucher_no)->delete('expense');

    if ($this->db->affected_rows() > 0) {
        return true;
    } else {
        return false; // Nothing was deleted (maybe voucher_no doesn't exist)
    }
}
    // expense item delete
  public function expense_item_delete($id = null){
 $headname = $this->db->select('*')->from('expense_item')->where('id',$id)->get()->row()->expense_item_name;
             $this->db->where('HeadName',$headname)
            ->delete('acc_coa');
        $this->db->where('id',$id)
            ->delete('expense_item');

        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
  }
     public function expense_item_insert(){
            $expense_type = $this->input->post('expense_item_name');
             $CreateBy=$this->session->userdata('user_id');
            $createdate=date('Y-m-d H:i:s');
            $coa = $this->headcode();
        
           if($coa->HeadCode!=NULL){
                $headcode=$coa->HeadCode+1;
           }else{
                $headcode="401";
            }
// expense item data
            $expense = array(
      'expense_item_name' =>  $expense_type,
    ); 
        // coa head create   
     $expense_coa = [
             'HeadCode'         => $headcode,
             'HeadName'         => $expense_type,
             'PHeadName'        => 'Expence',
             'HeadLevel'        => '1',
             'IsActive'         => '1',
             'IsTransaction'    => '1',
             'IsGL'             => '0',
             'HeadType'         => 'E',
             'IsBudget'         => '1',
             'IsDepreciation'   => '1',
             'DepreciationRate' => '1',
             'CreateBy'         => $CreateBy,
             'CreateDate'       => $createdate,
        ];
              $this->db->insert('expense_item',$expense);
              $this->db->insert('acc_coa',$expense_coa);

    return true;
}

     public function headcode(){
        $query=$this->db->query("SELECT MAX(HeadCode) as HeadCode FROM acc_coa WHERE HeadLevel='1' And HeadCode LIKE '40%' ORDER BY CreateDate DESC");
        return $query->row();

    }
    // expense item list
    public function expense_item_list(){
         return $this->db->select('*')   
            ->from('expense_item')
            ->order_by('id', 'desc')
            ->get()
            ->result_array();
    }
    // bank list
    public function bank_list(){
     return $this->db->select('*')   
            ->from('bank_add')
            ->get()
            ->result_array();
    }

      public function get_expense_statement($expense,$from_date,$to_date){
        $this->db->select('*');
        $this->db->from('expense');
        $this->db->where('type', $expense);
        $this->db->where('date >=', $from_date);
        $this->db->where('date <=', $to_date);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    // fetch expense
    public function getExpenseList($postData=null){
    $response = array();
    $fromdate = $this->input->post('fromdate');
    $todate   = $this->input->post('todate');
    $draw     = $postData['draw'];
    $start    = $postData['start'];
    $rowperpage = $postData['length'];
    $columnIndex = $postData['order'][0]['column'];
    $columnName  = $postData['columns'][$columnIndex]['data'];
    $columnSortOrder = $postData['order'][0]['dir'];
    $searchValue = $postData['search']['value'];

    // Date filter
    $datbetween = "";
    if(!empty($fromdate) && !empty($todate)){
        $datbetween = "date BETWEEN '$fromdate' AND '$todate'";
    }

    // Search
    $searchQuery = "";
    if($searchValue != ''){
        $searchQuery = "type LIKE '%".$searchValue."%'";
    }

    // Total records
    $this->db->select('COUNT(DISTINCT type) as allcount');
    $this->db->from('expense');
    if($datbetween) $this->db->where($datbetween);
    if($searchQuery) $this->db->where($searchQuery);
    $totalRecords = $this->db->get()->row()->allcount;

    // Filtered records (same as total if using search)
    $this->db->select('COUNT(DISTINCT type) as allcount');
    $this->db->from('expense');
    if($datbetween) $this->db->where($datbetween);
    if($searchQuery) $this->db->where($searchQuery);
    $totalRecordwithFilter = $this->db->get()->row()->allcount;

    // Fetch data with aggregation
    $this->db->select('type, SUM(amount) AS total_amount');
    $this->db->from('expense');
    if($datbetween) $this->db->where($datbetween);
    if($searchQuery) $this->db->where($searchQuery);
    $this->db->group_by('type');
    $this->db->order_by($columnName, $columnSortOrder);
    $this->db->limit($rowperpage, $start);

    $records = $this->db->get()->result();

    $data = array();
    $sl = 1;
   foreach($records as $record){
    $link_url = base_url('Cexpense/expense_detail/' . $record->type); // Adjust as needed

    $data[] = array(
        'sl' => $sl,
        // Make 'type' clickable:
        'type' => '<a href="'.$link_url.'">'.htmlspecialchars($record->type).'</a>',
        'total_amount' => $record->total_amount
    );
    $sl++;
}


    // JSON Response
    $response = array(
        "draw" => intval($draw),
        "iTotalRecords" => $totalRecords,
        "iTotalDisplayRecords" => $totalRecordwithFilter,
        "aaData" => $data
    );

    echo json_encode($response);
    exit;
}
public function get_expense_details_by_type($type)
{
    $this->db->select('*');
    $this->db->from('expense');  // replace with your actual table name
    $this->db->where('type', $type);
    $query = $this->db->get();

    if ($query->num_rows() > 0) {
        return $query->result();
    } else {
        return []; // return empty array if no data
    }
}



}
