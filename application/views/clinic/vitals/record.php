<!-- Record Vital Signs -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-bandaid"></i></div>
        <div class="header-title">
            <h1>Record Vital Signs</h1>
            <small>Nurse Station</small>
        </div>
    </section>

    <section class="content">
        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert">×</button>', '</div>'); ?>

        <form method="post">
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd">
                        <div class="panel-body">
                            <?php if(isset($patient)): ?>
                                <input type="hidden" name="patient_id" value="<?php echo $patient->patient_id; ?>">
                                <div class="alert alert-info">
                                    <strong>Patient:</strong> <?php echo $patient->first_name . ' ' . $patient->last_name; ?> (<?php echo $patient->patient_code; ?>)
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

                            <h3 style="color: #1a237e; font-weight: bold; margin-bottom: 20px;">VITAL SIGNS</h3>
                            
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>SBP</label>
                                        <input type="number" name="bp_systolic" class="form-control" placeholder="value">
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>DBP</label>
                                        <input type="number" name="bp_diastolic" class="form-control" placeholder="value">
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Trauma</label>
                                        <select name="trauma" class="form-control">
                                            <option value="">Select</option>
                                            <option value="None">None</option>
                                            <option value="Minor">Minor</option>
                                            <option value="Moderate">Moderate</option>
                                            <option value="Severe">Severe</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>SpO2</label>
                                        <input type="number" name="oxygen_saturation" class="form-control" placeholder="value">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>AVPU</label>
                                        <select name="avpu" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Alert">Alert</option>
                                            <option value="Voice">Voice</option>
                                            <option value="Pain">Pain</option>
                                            <option value="Unresponsive">Unresponsive</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Heart Rate</label>
                                        <input type="number" name="pulse" class="form-control" placeholder="value">
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Resp Rate</label>
                                        <input type="number" name="respiratory_rate" class="form-control" placeholder="value">
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Temp</label>
                                        <input type="number" name="temperature" class="form-control" step="0.1" placeholder="value">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Mobility</label>
                                        <select name="mobility" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Independent">Independent</option>
                                            <option value="Assisted">Assisted</option>
                                            <option value="Wheelchair">Wheelchair</option>
                                            <option value="Bedridden">Bedridden</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Height</label>
                                        <input type="number" name="height" class="form-control" step="0.1" placeholder="value">
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Weight</label>
                                        <input type="number" name="weight" class="form-control" step="0.1" placeholder="value">
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Blood Sugar (mg/dL)</label>
                                        <input type="number" name="blood_sugar" class="form-control" step="0.1" placeholder="100">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Notes</label>
                                <textarea name="notes" class="form-control" rows="2"></textarea>
                            </div>

                            <button type="submit" name="submit" value="1" class="btn btn-success btn-lg">
                                <i class="fa fa-save"></i> Record Vitals
                            </button>
                            <a href="<?php echo base_url('vitals'); ?>" class="btn btn-default btn-lg">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>




