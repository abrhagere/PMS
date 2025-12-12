<!-- Patient Registration Form - Exact Match -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-add-user"></i>
        </div>
        <div class="header-title">
            <h1>Register New Patient</h1>
            <small>Patient registration</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="<?php echo base_url('patients'); ?>">Patients</a></li>
                <li class="active">Add Patient</li>
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

        <form method="post" action="<?php echo base_url('patients/add'); ?>" enctype="multipart/form-data">
            
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Patient Information</h4>
                            </div>
                        </div>
                        <div class="panel-body">

                            <!-- Profile Picture -->
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label"></label>
                                <div class="col-sm-8">
                                    <div style="text-align: left;">
                                        <div id="photo_preview" style="width: 150px; height: 150px; border-radius: 50%; background: #e8f4f8; display: inline-flex; align-items: center; justify-content: center; border: 3px solid #5bc0de; overflow: hidden; position: relative;">
                                            <i class="fa fa-user fa-4x" style="color: #5bc0de;" id="default_icon"></i>
                                            <img id="preview_image" src="" style="width: 100%; height: 100%; object-fit: cover; display: none;">
                                            <label for="photo" style="position: absolute; bottom: 10px; right: 10px; background: #5bc0de; color: white; border-radius: 50%; width: 35px; height: 35px; display: flex; align-items: center; justify-content: center; cursor: pointer; border: 2px solid white;">
                                                <i class="fa fa-plus"></i>
                                            </label>
                                        </div>
                                        <input type="file" name="photo" id="photo" accept="image/*" style="display: none;">
                                    </div>
                                </div>
                            </div>

                            <!-- First Name, Middle Name -->
                            <div class="form-group row">
                                <label for="first_name" class="col-sm-3 col-form-label">First Name <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <input type="text" name="first_name" id="first_name" class="form-control" placeholder="First Name" value="<?php echo set_value('first_name'); ?>" required>
                                </div>
                                
                                <label for="middle_name" class="col-sm-2 col-form-label">Middle Name <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <input type="text" name="middle_name" id="middle_name" class="form-control" placeholder="Middle Name" value="<?php echo set_value('middle_name'); ?>">
                                </div>
                            </div>

                            <!-- Last Name -->
                            <div class="form-group row">
                                <label for="last_name" class="col-sm-3 col-form-label">Last Name <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Last Name" value="<?php echo set_value('last_name'); ?>" required>
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="form-group row">
                                <label for="email" class="col-sm-3 col-form-label">Email</label>
                                <div class="col-sm-8">
                                    <input type="email" name="email" id="email" class="form-control" placeholder="patient@gmail.com" value="<?php echo set_value('email'); ?>">
                                </div>
                            </div>

                            <!-- Phone Number -->
                            <div class="form-group row">
                                <label for="phone" class="col-sm-3 col-form-label">Phone Number <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <input type="text" name="phone" id="phone" class="form-control" placeholder="09........" value="<?php echo set_value('phone'); ?>" required>
                                </div>
                            </div>

                            <!-- Gender and Patient Type -->
                            <div class="form-group row">
                                <label for="gender" class="col-sm-3 col-form-label">Gender <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <select name="gender" id="gender" class="form-control" required>
                                        <option value="">Select</option>
                                        <option value="Male" <?php echo set_select('gender', 'Male'); ?>>Male</option>
                                        <option value="Female" <?php echo set_select('gender', 'Female'); ?>>Female</option>
                                        <option value="Other" <?php echo set_select('gender', 'Other'); ?>>Other</option>
                                    </select>
                                </div>

                                <label for="patient_type" class="col-sm-2 col-form-label">Patient Type <span class="text-danger">*</span></label>
                                <div class="col-sm-3">
                                    <select name="patient_type" id="patient_type" class="form-control">
                                        <option value="Regular" <?php echo set_select('patient_type', 'Regular', TRUE); ?>>Regular Patient (Normal)</option>
                                        <option value="VIP" <?php echo set_select('patient_type', 'VIP'); ?>>VIP Patient</option>
                                        <option value="Emergency" <?php echo set_select('patient_type', 'Emergency'); ?>>Emergency</option>
                                        <option value="Insurance" <?php echo set_select('patient_type', 'Insurance'); ?>>Insurance Patient</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Date of Birth -->
                            <div class="form-group row">
                                <label for="date_of_birth" class="col-sm-3 col-form-label">Date of Birth <span class="text-danger">*</span></label>
                                <div class="col-sm-8">
                                    <input type="date" name="date_of_birth" id="date_of_birth" class="form-control" value="<?php echo set_value('date_of_birth'); ?>" required onchange="calculateAge()">
                                </div>
                            </div>

                            <!-- Age (Auto-calculated) -->
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Age</label>
                                <div class="col-sm-8">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <input type="number" name="age_years" id="age_years" class="form-control" placeholder="0" value="0" readonly>
                                            <small>Year</small>
                                        </div>
                                        <div class="col-sm-2">
                                            <input type="number" name="age_months" id="age_months" class="form-control" placeholder="0" value="0" readonly>
                                            <small>Month</small>
                                        </div>
                                        <div class="col-sm-2">
                                            <input type="number" name="age_days" id="age_days" class="form-control" placeholder="0" value="0" readonly>
                                            <small>Day</small>
                                        </div>
                                        <div class="col-sm-2">
                                            <input type="number" class="form-control" placeholder="0" value="0" readonly>
                                            <small>Hour</small>
                                        </div>
                                        <div class="col-sm-2">
                                            <input type="number" class="form-control" placeholder="0" value="0" readonly>
                                            <small>Minute</small>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Marital Status -->
                            <div class="form-group row">
                                <label for="marital_status" class="col-sm-3 col-form-label">Marital Status</label>
                                <div class="col-sm-8">
                                    <select name="marital_status" id="marital_status" class="form-control">
                                        <option value="">Select</option>
                                        <option value="Single" <?php echo set_select('marital_status', 'Single'); ?>>Single</option>
                                        <option value="Married" <?php echo set_select('marital_status', 'Married'); ?>>Married</option>
                                        <option value="Divorced" <?php echo set_select('marital_status', 'Divorced'); ?>>Divorced</option>
                                        <option value="Widowed" <?php echo set_select('marital_status', 'Widowed'); ?>>Widowed</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Country / Nationality -->
                            <div class="form-group row">
                                <label for="country" class="col-sm-3 col-form-label">Country / Nationality</label>
                                <div class="col-sm-8">
                                    <select name="country" id="country" class="form-control">
                                        <option value="Ethiopia" selected>Ethiopia</option>
                                        <option value="Eritrea">Eritrea</option>
                                        <option value="Kenya">Kenya</option>
                                        <option value="Somalia">Somalia</option>
                                        <option value="Sudan">Sudan</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Region and Zone -->
                            <div class="form-group row">
                                <label for="region" class="col-sm-3 col-form-label">Region</label>
                                <div class="col-sm-3">
                                    <select name="region" id="region" class="form-control">
                                        <option value="">Select</option>
                                        <option value="Tigray">Tigray</option>
                                        <option value="Afar">Afar</option>
                                        <option value="Amhara">Amhara</option>
                                        <option value="Oromia">Oromia</option>
                                        <option value="Somali">Somali</option>
                                        <option value="SNNPR">SNNPR</option>
                                        <option value="Addis Ababa">Addis Ababa</option>
                                        <option value="Dire Dawa">Dire Dawa</option>
                                    </select>
                                </div>

                                <label for="zone" class="col-sm-2 col-form-label">Zone</label>
                                <div class="col-sm-3">
                                    <input type="text" name="zone" id="zone" class="form-control" placeholder="Zone" value="<?php echo set_value('zone'); ?>">
                                </div>
                            </div>

                            <!-- Woreda and City -->
                            <div class="form-group row">
                                <label for="woreda" class="col-sm-3 col-form-label">Woreda</label>
                                <div class="col-sm-3">
                                    <input type="text" name="woreda" id="woreda" class="form-control" placeholder="woreda" value="<?php echo set_value('woreda'); ?>">
                                </div>

                                <label for="city" class="col-sm-2 col-form-label">City</label>
                                <div class="col-sm-3">
                                    <input type="text" name="city" id="city" class="form-control" placeholder="City" value="<?php echo set_value('city'); ?>">
                                </div>
                            </div>

                            <!-- Kebele and House Number -->
                            <div class="form-group row">
                                <label for="kebele" class="col-sm-3 col-form-label">Kebele</label>
                                <div class="col-sm-3">
                                    <input type="text" name="kebele" id="kebele" class="form-control" placeholder="Kebele" value="<?php echo set_value('kebele'); ?>">
                                </div>

                                <label for="house_number" class="col-sm-2 col-form-label">House Number</label>
                                <div class="col-sm-3">
                                    <input type="text" name="house_number" id="house_number" class="form-control" placeholder="House Number" value="<?php echo set_value('house_number'); ?>">
                                </div>
                            </div>

                            <!-- Patient ID (Auto-generated - Display Only) -->
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Patient ID</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" value="Auto-generated (PAT-2025-XXXX)" readonly style="background: #f9f9f9; color: #999;">
                                </div>
                            </div>

                            <!-- Form Actions -->
                            <div class="form-group row">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button type="submit" name="submit" value="1" class="btn btn-success btn-lg">
                                        <i class="fa fa-save"></i> Register Patient
                                    </button>
                                    <button type="reset" class="btn btn-warning btn-lg">
                                        <i class="fa fa-refresh"></i> Reset
                                    </button>
                                    <a href="<?php echo base_url('patients'); ?>" class="btn btn-default btn-lg">
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

<!-- JavaScript -->
<script>
// Photo preview
document.getElementById('photo').addEventListener('change', function(e) {
    const file = e.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            document.getElementById('preview_image').src = e.target.result;
            document.getElementById('preview_image').style.display = 'block';
            document.getElementById('default_icon').style.display = 'none';
        }
        reader.readAsDataURL(file);
    }
});

// Calculate age from date of birth
function calculateAge() {
    const dob = new Date(document.getElementById('date_of_birth').value);
    const today = new Date();
    
    if (isNaN(dob.getTime())) return;
    
    let years = today.getFullYear() - dob.getFullYear();
    let months = today.getMonth() - dob.getMonth();
    let days = today.getDate() - dob.getDate();
    
    if (days < 0) {
        months--;
        const lastMonth = new Date(today.getFullYear(), today.getMonth(), 0);
        days += lastMonth.getDate();
    }
    
    if (months < 0) {
        years--;
        months += 12;
    }
    
    document.getElementById('age_years').value = years;
    document.getElementById('age_months').value = months;
    document.getElementById('age_days').value = days;
}
</script>

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

