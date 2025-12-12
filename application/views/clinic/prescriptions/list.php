<!-- Prescriptions List -->
<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd">
            <div class="panel-heading">
                <h4>
                    <i class="fa fa-file-text-o"></i> Prescriptions
                    <?php if($this->permission1->method('prescriptions','create')->access()){ ?>
                    <a href="<?php echo base_url('prescriptions/create'); ?>" class="btn btn-success btn-sm pull-right">
                        <i class="fa fa-plus"></i> New Prescription
                    </a>
                    <?php } ?>
                </h4>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Prescription #</th>
                                <th>Date</th>
                                <th>Patient</th>
                                <th>Doctor</th>
                                <th>Diagnosis</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($prescriptions)): foreach ($prescriptions as $rx): ?>
                                <tr>
                                    <td><strong><?php echo $rx->prescription_number; ?></strong></td>
                                    <td><?php echo date('M d, Y', strtotime($rx->prescription_date)); ?></td>
                                    <td><?php echo $rx->patient_name; ?></td>
                                    <td>Dr. <?php echo $rx->doctor_name; ?></td>
                                    <td><?php echo substr($rx->diagnosis, 0, 40) . '...'; ?></td>
                                    <td><span class="label label-<?php echo $rx->status == 'Dispensed' ? 'success' : 'warning'; ?>"><?php echo $rx->status; ?></span></td>
                                    <td>
                                        <a href="<?php echo base_url('prescriptions/view/'.$rx->prescription_id); ?>" class="btn btn-info btn-xs">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; else: ?>
                                <tr><td colspan="7" class="text-center">No prescriptions found</td></tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>









