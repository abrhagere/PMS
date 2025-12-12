<!-- Book Appointment Form -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-date"></i>
        </div>
        <div class="header-title">
            <h1>Book Appointment</h1>
            <small>Schedule patient appointment</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="<?php echo base_url('appointments'); ?>">Appointments</a></li>
                <li class="active">Book</li>
            </ol>
        </div>
    </section>

    <section class="content">
        
        <?php if ($this->session->flashdata('message')): ?>
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <?php echo $this->session->flashdata('message'); ?>
        </div>
        <?php endif; ?>
        
        <?php if ($this->session->flashdata('error_message')): ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <?php echo $this->session->flashdata('error_message'); ?>
        </div>
        <?php endif; ?>

        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert">×</button>', '</div>'); ?>

        <form method="post" action="<?php echo base_url('appointments/book'); ?>">
            
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Appointment Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">

                            <!-- Patient Selection -->
                            <div class="form-group row">
                                <label for="patient_id" class="col-sm-3 col-form-label">Patient <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <select name="patient_id" id="patient_id" class="form-control select2" required>
                                        <option value="">Select Patient</option>
                                        <?php if (!empty($patients)): ?>
                                            <?php foreach ($patients as $patient): ?>
                                                <option value="<?php echo $patient->patient_id; ?>" 
                                                        <?php echo (isset($selected_patient) && $selected_patient == $patient->patient_id) ? 'selected' : ''; ?>>
                                                    <?php echo $patient->patient_code . ' - ' . $patient->full_name . ' (' . $patient->phone . ')'; ?>
                                                </option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </select>
                                    <small class="text-muted">
                                        Or <a href="<?php echo base_url('patients/add'); ?>" target="_blank">register new patient</a>
                                    </small>
                                </div>
                            </div>

                            <!-- Doctor Selection -->
                            <div class="form-group row">
                                <label for="doctor_id" class="col-sm-3 col-form-label">Doctor <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <select name="doctor_id" id="doctor_id" class="form-control" required>
                                        <option value="">Select Doctor</option>
                                        <?php if (!empty($doctors)): ?>
                                            <?php foreach ($doctors as $doctor): ?>
                                                <option value="<?php echo $doctor->user_id; ?>">
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

                            <!-- Appointment Date and Time -->
                            <div class="form-group row">
                                <label for="appointment_date" class="col-sm-3 col-form-label">Appointment Date <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <input type="date" name="appointment_date" id="appointment_date" class="form-control" value="<?php echo set_value('appointment_date', date('Y-m-d')); ?>" required min="<?php echo date('Y-m-d'); ?>">
                                </div>

                                <label for="appointment_time" class="col-sm-2 col-form-label">Time <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <input type="time" name="appointment_time" id="appointment_time" class="form-control" value="<?php echo set_value('appointment_time'); ?>" required>
                                </div>
                            </div>

                            <!-- Duration and Type -->
                            <div class="form-group row">
                                <label for="duration" class="col-sm-3 col-form-label">Duration (minutes)</label>
                                <div class="col-sm-3">
                                    <input type="number" name="duration" id="duration" class="form-control" value="30" min="15" max="120" step="15">
                                </div>

                                <label for="appointment_type" class="col-sm-2 col-form-label">Type <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <select name="appointment_type" id="appointment_type" class="form-control" required>
                                        <option value="Consultation">Consultation</option>
                                        <option value="Follow-up">Follow-up</option>
                                        <option value="Check-up">Check-up</option>
                                        <option value="Emergency">Emergency</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Symptoms -->
                            <div class="form-group row">
                                <label for="symptoms" class="col-sm-3 col-form-label">Symptoms / Chief Complaint</label>
                                <div class="col-sm-8">
                                    <textarea name="symptoms" id="symptoms" class="form-control" rows="3" placeholder="Patient's symptoms or reason for visit"><?php echo set_value('symptoms'); ?></textarea>
                                </div>
                            </div>

                            <!-- Notes -->
                            <div class="form-group row">
                                <label for="notes" class="col-sm-3 col-form-label">Notes</label>
                                <div class="col-sm-8">
                                    <textarea name="notes" id="notes" class="form-control" rows="2" placeholder="Additional notes (optional)"><?php echo set_value('notes'); ?></textarea>
                                </div>
                            </div>

                            <!-- Form Actions -->
                            <div class="form-group row">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button type="submit" name="submit" value="1" class="btn btn-success btn-lg">
                                        <i class="fa fa-save"></i> Book Appointment
                                    </button>
                                    <button type="reset" class="btn btn-warning btn-lg">
                                        <i class="fa fa-refresh"></i> Reset
                                    </button>
                                    <a href="<?php echo base_url('appointments'); ?>" class="btn btn-default btn-lg">
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
</style>

<!-- Select2 for better dropdowns -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
$(document).ready(function() {
    // Initialize Select2 for patient selection
    $('#patient_id').select2({
        placeholder: 'Search patient by MRN or phone number',
        allowClear: true
    });
});
</script>


