<!-- Consultation List -->
<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <i class="fa fa-stethoscope"></i> Consultations
                        <?php if($this->permission1->method('consultations','create')->access()){ ?>
                        <a href="<?php echo base_url('consultations/create'); ?>" class="btn btn-success btn-sm pull-right">
                            <i class="fa fa-plus"></i> New Consultation
                        </a>
                        <?php } ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">
                <div class="row" style="margin-bottom: 20px;">
                    <div class="col-sm-4">
                        <div class="alert alert-info">
                            <h4><?php echo isset($stats['today']) ? $stats['today'] : 0; ?></h4>
                            <p>Today's Consultations</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="alert alert-success">
                            <h4><?php echo isset($stats['this_month']) ? $stats['this_month'] : 0; ?></h4>
                            <p>This Month</p>
                        </div>
                    </div>
                </div>
                
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Consultation #</th>
                                <th>Date</th>
                                <th>Patient</th>
                                <th>Doctor</th>
                                <th>Diagnosis</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($consultations)): ?>
                                <?php foreach ($consultations as $con): ?>
                                    <tr>
                                        <td><strong><?php echo $con->consultation_number; ?></strong></td>
                                        <td><?php echo date('M d, Y', strtotime($con->consultation_date)); ?></td>
                                        <td><?php echo $con->patient_name; ?></td>
                                        <td>Dr. <?php echo $con->doctor_name; ?></td>
                                        <td><?php echo substr($con->diagnosis, 0, 50) . '...'; ?></td>
                                        <td>
                                            <a href="<?php echo base_url('consultations/view/'.$con->consultation_id); ?>" class="btn btn-info btn-xs">
                                                <i class="fa fa-eye"></i>
                                            </a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <tr>
                                    <td colspan="6" class="text-center">No consultations found</td>
                                </tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>









