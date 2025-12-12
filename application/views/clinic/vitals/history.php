<!-- Patient Vital Signs History -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-bandaid"></i></div>
        <div class="header-title">
            <h1>Vital Signs History</h1>
            <small><?php echo isset($patient) ? $patient->first_name . ' ' . $patient->last_name : 'Patient'; ?></small>
        </div>
    </section>

    <section class="content">
        <?php if(isset($patient)): ?>
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd">
                        <div class="panel-heading">
                            <h4>
                                <i class="fa fa-user"></i> Patient: <?php echo $patient->first_name . ' ' . $patient->last_name; ?> (<?php echo $patient->patient_code; ?>)
                                <?php if($this->permission1->method('vitals','create')->access()){ ?>
                                <a href="<?php echo base_url('vitals/record/'.$patient->patient_id); ?>" class="btn btn-success btn-sm pull-right">
                                    <i class="fa fa-plus"></i> Record New Vitals
                                </a>
                                <?php } ?>
                            </h4>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Date/Time</th>
                                            <th>Temp (°C)</th>
                                            <th>BP (SBP/DBP)</th>
                                            <th>Heart Rate</th>
                                            <th>Resp Rate</th>
                                            <th>SpO2 (%)</th>
                                            <th>Trauma</th>
                                            <th>AVPU</th>
                                            <th>Mobility</th>
                                            <th>Height (cm)</th>
                                            <th>Weight (kg)</th>
                                            <th>BMI</th>
                                            <th>Recorded By</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if (!empty($vitals)): foreach ($vitals as $v): ?>
                                            <tr>
                                                <td><?php echo date('M d, Y H:i', strtotime($v->recorded_date ? $v->recorded_date : $v->recorded_at)); ?></td>
                                                <td><?php echo $v->temperature ? $v->temperature : '-'; ?></td>
                                                <td>
                                                    <?php 
                                                    if ($v->bp_systolic && $v->bp_diastolic) {
                                                        echo $v->bp_systolic . '/' . $v->bp_diastolic;
                                                    } elseif ($v->blood_pressure) {
                                                        echo $v->blood_pressure;
                                                    } else {
                                                        echo '-';
                                                    }
                                                    ?>
                                                </td>
                                                <td><?php echo $v->pulse ? $v->pulse . ' bpm' : '-'; ?></td>
                                                <td><?php echo $v->respiratory_rate ? $v->respiratory_rate : '-'; ?></td>
                                                <td><?php echo $v->oxygen_saturation ? $v->oxygen_saturation . '%' : '-'; ?></td>
                                                <td><?php echo $v->trauma ? $v->trauma : '-'; ?></td>
                                                <td><?php echo $v->avpu ? $v->avpu : '-'; ?></td>
                                                <td><?php echo $v->mobility ? $v->mobility : '-'; ?></td>
                                                <td><?php echo $v->height ? $v->height : '-'; ?></td>
                                                <td><?php echo $v->weight ? $v->weight : '-'; ?></td>
                                                <td><?php echo isset($v->bmi) && $v->bmi ? $v->bmi : '-'; ?></td>
                                                <td><?php echo $v->recorded_by_name; ?></td>
                                            </tr>
                                        <?php endforeach; else: ?>
                                            <tr><td colspan="13" class="text-center">No vital signs recorded for this patient</td></tr>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php else: ?>
            <div class="alert alert-danger">
                Patient not found.
            </div>
        <?php endif; ?>
    </section>
</div>

