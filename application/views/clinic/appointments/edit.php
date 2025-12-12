<!-- Edit Appointment Form -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-date"></i>
        </div>
        <div class="header-title">
            <h1>Edit Appointment</h1>
            <small>Update appointment details</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="<?php echo base_url('appointments'); ?>">Appointments</a></li>
                <li class="active">Edit</li>
            </ol>
        </div>
    </section>

    <section class="content">
        
        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert">×</button>', '</div>'); ?>

        <form method="post" action="<?php echo base_url('appointments/edit/'.$appointment->appointment_id); ?>">
            
            <div class="row">
                <div class="col-sm-8">
                    <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Appointment Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">

                            <!-- Patient Info (Read-only) -->
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Patient</label>
                                <div class="col-sm-8">
                                    <p class="form-control-static">
                                        <strong><?php echo $appointment->first_name . ' ' . $appointment->last_name; ?></strong>
                                        (<?php echo $appointment->patient_code; ?>)
                                    </p>
                                </div>
                            </div>

                            <!-- Doctor Selection -->
                            <div class="form-group row">
                                <label for="doctor_id" class="col-sm-3 col-form-label">Doctor <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <select name="doctor_id" id="doctor_id" class="form-control" required>
                                        <?php if (!empty($doctors)): ?>
                                            <?php foreach ($doctors as $doctor): ?>
                                                <option value="<?php echo $doctor->user_id; ?>" 
                                                        <?php echo ($appointment->doctor_id == $doctor->user_id) ? 'selected' : ''; ?>>
                                                    Dr. <?php echo $doctor->full_name; ?>
                                                    <?php if ($doctor->specialization): ?>
                                                        (<?php echo $doctor->specialization; ?>)
                                                    <?php endif; ?>
                                                </option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </select>
                                </div>
                            </div>

                            <!-- Date and Time -->
                            <div class="form-group row">
                                <label for="appointment_date" class="col-sm-3 col-form-label">Date <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <input type="date" name="appointment_date" id="appointment_date" class="form-control" value="<?php echo $appointment->appointment_date; ?>" required min="<?php echo date('Y-m-d'); ?>">
                                </div>

                                <label for="appointment_time" class="col-sm-2 col-form-label">Time <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <input type="time" name="appointment_time" id="appointment_time" class="form-control" value="<?php echo $appointment->appointment_time; ?>" required>
                                </div>
                            </div>

                            <!-- Duration and Type -->
                            <div class="form-group row">
                                <label for="duration" class="col-sm-3 col-form-label">Duration</label>
                                <div class="col-sm-3">
                                    <input type="number" name="duration" id="duration" class="form-control" value="<?php echo $appointment->duration; ?>" min="15" max="120" step="15">
                                    <small class="text-muted">Minutes</small>
                                </div>

                                <label for="appointment_type" class="col-sm-2 col-form-label">Type <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <select name="appointment_type" id="appointment_type" class="form-control" required>
                                        <option value="Consultation" <?php echo ($appointment->appointment_type == 'Consultation') ? 'selected' : ''; ?>>Consultation</option>
                                        <option value="Follow-up" <?php echo ($appointment->appointment_type == 'Follow-up') ? 'selected' : ''; ?>>Follow-up</option>
                                        <option value="Check-up" <?php echo ($appointment->appointment_type == 'Check-up') ? 'selected' : ''; ?>>Check-up</option>
                                        <option value="Emergency" <?php echo ($appointment->appointment_type == 'Emergency') ? 'selected' : ''; ?>>Emergency</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Symptoms -->
                            <div class="form-group row">
                                <label for="symptoms" class="col-sm-3 col-form-label">Symptoms</label>
                                <div class="col-sm-8">
                                    <textarea name="symptoms" id="symptoms" class="form-control" rows="3"><?php echo $appointment->symptoms; ?></textarea>
                                </div>
                            </div>

                            <!-- Notes -->
                            <div class="form-group row">
                                <label for="notes" class="col-sm-3 col-form-label">Notes</label>
                                <div class="col-sm-8">
                                    <textarea name="notes" id="notes" class="form-control" rows="2"><?php echo $appointment->notes; ?></textarea>
                                </div>
                            </div>

                            <!-- Form Actions -->
                            <div class="form-group row">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button type="submit" name="submit" value="1" class="btn btn-success btn-lg">
                                        <i class="fa fa-save"></i> Update Appointment
                                    </button>
                                    <a href="<?php echo base_url('appointments/view/'.$appointment->appointment_id); ?>" class="btn btn-default btn-lg">
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

<style>
.form-group.row {
    margin-bottom: 15px;
}
.col-form-label {
    padding-top: 7px;
    font-weight: 600;
    text-align: right;
}
.form-control-static {
    padding-top: 7px;
}
</style>









