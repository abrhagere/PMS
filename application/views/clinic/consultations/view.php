<!-- View Consultation -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-science"></i></div>
        <div class="header-title">
            <h1>Consultation Details</h1>
            <small><?php echo $consultation->consultation_number; ?></small>
        </div>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <h4>
                            Consultation Record
                            <?php if($this->permission1->method('consultations','update')->access()){ ?>
                            <a href="<?php echo base_url('consultations/edit/'.$consultation->consultation_id); ?>" class="btn btn-primary btn-sm pull-right">
                                <i class="fa fa-edit"></i> Edit
                            </a>
                            <?php } ?>
                        </h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered">
                            <tr>
                                <th width="25%">Consultation #:</th>
                                <td><strong><?php echo $consultation->consultation_number; ?></strong></td>
                            </tr>
                            <tr>
                                <th>Patient:</th>
                                <td>
                                    <a href="<?php echo base_url('patients/view/'.$consultation->patient_id); ?>">
                                        <?php echo $consultation->first_name . ' ' . $consultation->last_name; ?>
                                    </a>
                                    (<?php echo $consultation->patient_code; ?>)
                                </td>
                            </tr>
                            <tr>
                                <th>Doctor:</th>
                                <td>Dr. <?php echo $consultation->doctor_name; ?></td>
                            </tr>
                            <tr>
                                <th>Date:</th>
                                <td><?php echo date('F d, Y h:i A', strtotime($consultation->consultation_date)); ?></td>
                            </tr>
                            <tr>
                                <th>Chief Complaint:</th>
                                <td><?php echo nl2br(htmlspecialchars($consultation->chief_complaint)); ?></td>
                            </tr>
                            <?php if($consultation->history_present_illness): ?>
                            <tr>
                                <th>History:</th>
                                <td><?php echo nl2br(htmlspecialchars($consultation->history_present_illness)); ?></td>
                            </tr>
                            <?php endif; ?>
                            <?php if($consultation->physical_examination): ?>
                            <tr>
                                <th>Physical Examination:</th>
                                <td><?php echo nl2br(htmlspecialchars($consultation->physical_examination)); ?></td>
                            </tr>
                            <?php endif; ?>
                            <tr>
                                <th>Diagnosis:</th>
                                <td><strong><?php echo nl2br(htmlspecialchars($consultation->diagnosis)); ?></strong></td>
                            </tr>
                            <?php if($consultation->treatment_plan): ?>
                            <tr>
                                <th>Treatment Plan:</th>
                                <td><?php echo nl2br(htmlspecialchars($consultation->treatment_plan)); ?></td>
                            </tr>
                            <?php endif; ?>
                            <?php if($consultation->follow_up_date): ?>
                            <tr>
                                <th>Follow-up Date:</th>
                                <td><?php echo date('F d, Y', strtotime($consultation->follow_up_date)); ?></td>
                            </tr>
                            <?php endif; ?>
                        </table>
                        
                        <div class="btn-group">
                            <a href="<?php echo base_url('consultations'); ?>" class="btn btn-default">
                                <i class="fa fa-arrow-left"></i> Back to List
                            </a>
                            <?php if($this->permission1->module('prescriptions')->access()){ ?>
                            <a href="<?php echo base_url('prescriptions/create/'.$consultation->consultation_id); ?>" class="btn btn-success">
                                <i class="fa fa-file-text-o"></i> Write Prescription
                            </a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>









