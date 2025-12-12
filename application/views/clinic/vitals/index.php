<!-- Vitals List -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-bandaid"></i></div>
        <div class="header-title">
            <h1>Vital Signs Records</h1>
            <small>All Patients</small>
        </div>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <h4>
                            <i class="fa fa-heartbeat"></i> Vital Signs Records
                            <?php if($this->permission1->method('vitals','create')->access()){ ?>
                            <a href="<?php echo base_url('vitals/record'); ?>" class="btn btn-success btn-sm pull-right">
                                <i class="fa fa-plus"></i> Record Vitals
                            </a>
                            <?php } ?>
                        </h4>
                    </div>
                    <div class="panel-body">
                        <?php if(isset($pagination) && $pagination): ?>
                            <div class="text-center">
                                <?php echo $pagination; ?>
                            </div>
                        <?php endif; ?>
                        
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Date/Time</th>
                                        <th>Patient</th>
                                        <th>Temp</th>
                                        <th>BP (SBP/DBP)</th>
                                        <th>Heart Rate</th>
                                        <th>Resp Rate</th>
                                        <th>SpO2</th>
                                        <th>Trauma</th>
                                        <th>AVPU</th>
                                        <th>Mobility</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if (!empty($vitals)): foreach ($vitals as $v): ?>
                                        <tr>
                                            <td><?php echo date('M d, Y H:i', strtotime($v->recorded_date ? $v->recorded_date : $v->recorded_at)); ?></td>
                                            <td>
                                                <a href="<?php echo base_url('patients/view/'.$v->patient_id); ?>"><?php echo $v->patient_name; ?></a>
                                                <br><small class="text-muted"><?php echo $v->patient_code; ?></small>
                                            </td>
                                            <td><?php echo $v->temperature ? $v->temperature . '°C' : '-'; ?></td>
                                            <td>
                                                <?php 
                                                if (isset($v->bp_systolic) && isset($v->bp_diastolic) && $v->bp_systolic && $v->bp_diastolic) {
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
                                            <td><?php echo isset($v->trauma) && $v->trauma ? $v->trauma : '-'; ?></td>
                                            <td><?php echo isset($v->avpu) && $v->avpu ? $v->avpu : '-'; ?></td>
                                            <td><?php echo isset($v->mobility) && $v->mobility ? $v->mobility : '-'; ?></td>
                                            <td>
                                                <a href="<?php echo base_url('vitals/history/'.$v->patient_id); ?>" class="btn btn-info btn-xs" title="View History">
                                                    <i class="fa fa-history"></i> History
                                                </a>
                                            </td>
                                        </tr>
                                    <?php endforeach; else: ?>
                                        <tr><td colspan="11" class="text-center">No vital signs recorded</td></tr>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                        
                        <?php if(isset($pagination) && $pagination): ?>
                            <div class="text-center">
                                <?php echo $pagination; ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>




