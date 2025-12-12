<!-- View Prescription -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-note2"></i></div>
        <div class="header-title">
            <h1>Prescription Details</h1>
            <small><?php echo $prescription->prescription_number; ?></small>
        </div>
    </section>

    <section class="content">
        <div class="panel panel-bd">
            <div class="panel-heading">
                <h4>
                    Prescription
                    <a href="<?php echo base_url('prescriptions/print/'.$prescription->prescription_id); ?>" 
                       class="btn btn-primary btn-sm pull-right" target="_blank">
                        <i class="fa fa-print"></i> Print
                    </a>
                </h4>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <tr>
                        <th width="25%">Prescription #:</th>
                        <td><strong><?php echo $prescription->prescription_number; ?></strong></td>
                    </tr>
                    <tr>
                        <th>Patient:</th>
                        <td><?php echo $prescription->first_name . ' ' . $prescription->last_name; ?> (<?php echo $prescription->patient_code; ?>)</td>
                    </tr>
                    <tr>
                        <th>Doctor:</th>
                        <td>Dr. <?php echo $prescription->doctor_name; ?></td>
                    </tr>
                    <tr>
                        <th>Date:</th>
                        <td><?php echo date('F d, Y', strtotime($prescription->prescription_date)); ?></td>
                    </tr>
                    <tr>
                        <th>Diagnosis:</th>
                        <td><?php echo nl2br(htmlspecialchars($prescription->diagnosis)); ?></td>
                    </tr>
                    <tr>
                        <th>Status:</th>
                        <td><span class="label label-<?php echo $prescription->status == 'Dispensed' ? 'success' : 'warning'; ?>"><?php echo $prescription->status; ?></span></td>
                    </tr>
                </table>

                <h4>Medications</h4>
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Medicine</th>
                            <th>Dosage</th>
                            <th>Frequency</th>
                            <th>Duration</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($details)): $i = 1; foreach ($details as $med): ?>
                            <tr>
                                <td><?php echo $i++; ?></td>
                                <td><strong><?php echo $med->medicine_name; ?></strong></td>
                                <td><?php echo $med->dosage; ?></td>
                                <td><?php echo $med->frequency; ?></td>
                                <td><?php echo $med->duration; ?></td>
                                <td><?php echo $med->quantity; ?></td>
                            </tr>
                        <?php endforeach; endif; ?>
                    </tbody>
                </table>

                <?php if ($prescription->instructions): ?>
                <div class="alert alert-info">
                    <strong>Instructions:</strong> <?php echo nl2br(htmlspecialchars($prescription->instructions)); ?>
                </div>
                <?php endif; ?>

                <a href="<?php echo base_url('prescriptions'); ?>" class="btn btn-default">
                    <i class="fa fa-arrow-left"></i> Back to List
                </a>
            </div>
        </div>
    </section>
</div>









