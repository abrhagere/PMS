<style type="text/css">
    .prints{
        background-color: #31B404;
        color:#fff;
    }
</style>
<!-- Manage Invoice Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div> 
        <div class="header-title">
            <h1><?php echo display('expense') ?></h1>
            <small><?php echo display('total_expense_ammount') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('invoice') ?></a></li>
                <li class="active"><?php echo display('manage_invoice') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">
        <!-- Alert Message -->
        <?php
        $message = $this->session->userdata('message');
        if (isset($message)) {
            ?>
            <div class="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $message ?>                    
            </div>
            <?php
            $this->session->unset_userdata('message');
        }
        $error_message = $this->session->userdata('error_message');
        if (isset($error_message)) {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $error_message ?>                    
            </div>
            <?php
            $this->session->unset_userdata('error_message');
        }
        ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
   

                </div>
            </div>
        </div>

        <!-- date between search -->
        <div class="row">
            
                <div class="panel panel-default">
                    
            </div>
            
        </div>
        <div class="row"> 
        </div>
        <!-- Manage Invoice report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive" >
                            <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="ExpList"> 
                                <thead>
                                    <tr>
                                        <th><?php echo display('type') ?></th>
                                        <th><?php echo display('amount') ?></th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
 <td>
  <a href="<?php echo base_url('Cexpense/expense_statement_form'); ?>">
    <?php echo display('total_expense_ammount'); ?>
  </a>
</td>

  <td><?php echo isset($total_expense) ? $total_expense : '0.00'; ?></td>
</tr>
<tr>
 <td>
  <a href="<?php echo base_url('Cpayroll/salary_payment'); ?>">
    <?php echo display('total_paid_salary'); ?>
  </a>
</td>

  <td><?php echo isset($total_payment) ? $total_payment : '0.00'; ?></td>
</tr>

                                    
             
                                </tbody>
                                <tfoot>
    <tr>
      <th colspan="1" style="text-align:right">Total:</th>
      <th>
        <?php 
          $total = $total_expense + $total_payment; 
          echo number_format($total, 2);
        ?>
      </th>
    </tr>
  </tfoot>
                            </table>
                            
                        </div>
                       

                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Manage Invoice End -->

