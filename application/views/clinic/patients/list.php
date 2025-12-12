<!-- Patient List View -->
<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <i class="fa fa-users"></i> Patient Management
                        <a href="<?php echo base_url('patients/add'); ?>" class="btn btn-success btn-sm pull-right">
                            <i class="fa fa-plus"></i> Add New Patient
                        </a>
                    </h4>
                </div>
            </div>
            <div class="panel-body">
                
                <!-- Success Message -->
                <?php if ($this->session->flashdata('message')): ?>
                <div class="alert alert-success alert-dismissable" style="margin-top: 20px;">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">×</button>
                    <strong><i class="fa fa-check-circle"></i> Success!</strong>
                    <p style="margin: 5px 0 0 0;"><?php echo $this->session->flashdata('message'); ?></p>
                </div>
                <?php endif; ?>
                
                <!-- Error Message -->
                <?php if ($this->session->flashdata('error_message')): ?>
                <div class="alert alert-danger alert-dismissable" style="margin-top: 20px;">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">×</button>
                    <strong><i class="fa fa-exclamation-circle"></i> Error!</strong>
                    <p style="margin: 5px 0 0 0;"><?php echo $this->session->flashdata('error_message'); ?></p>
                </div>
                <?php endif; ?>
                
                <!-- Statistics -->
                <div class="row" style="margin-bottom: 20px;">
                    <div class="col-sm-3">
                        <div class="alert alert-info">
                            <h4><?php echo isset($stats['total_patients']) ? $stats['total_patients'] : 0; ?></h4>
                            <p>Total Patients</p>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="alert alert-success">
                            <h4><?php echo isset($stats['new_today']) ? $stats['new_today'] : 0; ?></h4>
                            <p>Registered Today</p>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="alert alert-warning">
                            <h4><?php echo isset($stats['new_this_month']) ? $stats['new_this_month'] : 0; ?></h4>
                            <p>This Month</p>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <!-- Search Form -->
                        <form method="get" action="<?php echo base_url('patients'); ?>">
                            <div class="form-group">
                                <input type="text" 
                                       name="search" 
                                       class="form-control" 
                                       placeholder="Search by MRN or phone number..." 
                                       value="<?php echo isset($search) ? $search : ''; ?>">
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">
                                <i class="fa fa-search"></i> Search
                            </button>
                        </form>
                    </div>
                </div>
                
                <!-- Patients Table -->
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Photo</th>
                                <th>Patient Code</th>
                                <th>Name</th>
                                <th>Age/Gender</th>
                                <th>Contact</th>
                                <th>Blood Group</th>
                                <th>Registered</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($patients)): ?>
                                <?php foreach ($patients as $patient): ?>
                                    <tr>
                                        <td>
                                            <?php if (!empty($patient->photo)): ?>
                                                <img src="<?php echo base_url($patient->photo); ?>" 
                                                     alt="<?php echo $patient->full_name; ?>" 
                                                     style="width: 40px; height: 40px; border-radius: 50%;">
                                            <?php else: ?>
                                                <div style="width: 40px; height: 40px; background: #ddd; border-radius: 50%; display: flex; align-items: center; justify-content: center;">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                            <?php endif; ?>
                                        </td>
                                        <td><strong><?php echo $patient->patient_code; ?></strong></td>
                                        <td><?php echo $patient->full_name; ?></td>
                                        <td>
                                            <?php echo isset($patient->age) ? $patient->age . ' yrs' : 'N/A'; ?> / 
                                            <?php echo $patient->gender; ?>
                                        </td>
                                        <td>
                                            <i class="fa fa-phone"></i> <?php echo $patient->phone; ?><br>
                                            <?php if ($patient->email): ?>
                                                <small><i class="fa fa-envelope"></i> <?php echo $patient->email; ?></small>
                                            <?php endif; ?>
                                        </td>
                                        <td>
                                            <?php if ($patient->blood_group): ?>
                                                <span class="label label-danger"><?php echo $patient->blood_group; ?></span>
                                            <?php else: ?>
                                                <span class="text-muted">N/A</span>
                                            <?php endif; ?>
                                        </td>
                                        <td>
                                            <small><?php echo date('M d, Y', strtotime($patient->registered_date)); ?></small>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <a href="<?php echo base_url('patients/view/'.$patient->patient_id); ?>" 
                                                   class="btn btn-info btn-xs" title="View Profile">
                                                    <i class="fa fa-eye"></i>
                                                </a>
                                                <a href="<?php echo base_url('patients/edit/'.$patient->patient_id); ?>" 
                                                   class="btn btn-primary btn-xs" title="Edit">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a href="<?php echo base_url('appointments/book?patient='.$patient->patient_id); ?>" 
                                                   class="btn btn-success btn-xs" title="Book Appointment">
                                                    <i class="fa fa-calendar-plus-o"></i>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <tr>
                                    <td colspan="8" class="text-center">
                                        <p style="padding: 30px;">
                                            <i class="fa fa-users fa-3x text-muted"></i><br><br>
                                            No patients found. 
                                            <a href="<?php echo base_url('patients/add'); ?>">Add your first patient</a>
                                        </p>
                                    </td>
                                </tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
                
                <!-- Pagination -->
                <?php if (isset($pagination) && !empty($pagination)): ?>
                    <div class="text-center">
                        <?php echo $pagination; ?>
                    </div>
                <?php endif; ?>
                
            </div>
        </div>
    </div>
</div>

<style>
.alert h4 {
    margin: 0 0 5px 0;
    font-size: 28px;
    font-weight: bold;
}
.alert p {
    margin: 0;
    font-size: 13px;
}
</style>

