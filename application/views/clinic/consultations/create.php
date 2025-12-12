<!-- Create Consultation Form -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-science"></i></div>
        <div class="header-title">
            <h1>Create Consultation</h1>
            <small>Doctor consultation record</small>
        </div>
    </section>

    <section class="content">
        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert">×</button>', '</div>'); ?>

        <form method="post">
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd">
                        <div class="panel-body">
                            <?php if(isset($appointment)): ?>
                                <input type="hidden" name="patient_id" value="<?php echo $appointment->patient_id; ?>">
                                <div class="alert alert-info">
                                    <strong>Patient:</strong> <?php echo $appointment->first_name . ' ' . $appointment->last_name; ?> 
                                    (<?php echo $appointment->patient_code; ?>)
                                </div>
                            <?php else: ?>
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label">Patient <span class="text-danger">*</span></label>
                                    <div class="col-sm-8">
                                        <select name="patient_id" class="form-control" required>
                                            <option value="">Select Patient</option>
                                            <?php if (!empty($patients)): foreach ($patients as $p): ?>
                                                <option value="<?php echo $p->patient_id; ?>"><?php echo $p->patient_code . ' - ' . $p->full_name; ?></option>
                                            <?php endforeach; endif; ?>
                                        </select>
                                    </div>
                                </div>
                            <?php endif; ?>

                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Chief Complaint <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <textarea name="chief_complaint" class="form-control" rows="2" required><?php echo set_value('chief_complaint', isset($appointment) ? $appointment->symptoms : ''); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">History of Present Illness</label>
                                <div class="col-sm-8">
                                    <textarea name="history_present_illness" class="form-control" rows="3"><?php echo set_value('history_present_illness'); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Physical Examination</label>
                                <div class="col-sm-8">
                                    <textarea name="physical_examination" class="form-control" rows="3"><?php echo set_value('physical_examination'); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Diagnosis <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <textarea name="diagnosis" class="form-control" rows="3" required><?php echo set_value('diagnosis'); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Treatment Plan</label>
                                <div class="col-sm-8">
                                    <textarea name="treatment_plan" class="form-control" rows="3"><?php echo set_value('treatment_plan'); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Follow-up Date</label>
                                <div class="col-sm-4">
                                    <input type="date" name="follow_up_date" class="form-control" value="<?php echo set_value('follow_up_date'); ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Follow-up Instructions</label>
                                <div class="col-sm-8">
                                    <textarea name="follow_up_instructions" class="form-control" rows="2"><?php echo set_value('follow_up_instructions'); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button type="submit" name="submit" value="1" class="btn btn-success btn-lg">
                                        <i class="fa fa-save"></i> Save Consultation
                                    </button>
                                    <a href="<?php echo base_url('consultations'); ?>" class="btn btn-default btn-lg">
                                        <i class="fa fa-times"></i> Cancel
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>









