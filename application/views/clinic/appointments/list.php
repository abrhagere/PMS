<!-- Appointment List View -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-date"></i>
        </div>
        <div class="header-title">
            <h1>Appointment Management</h1>
            <small>View and manage appointments</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="<?php echo base_url('clinic/dashboard'); ?>">Clinic</a></li>
                <li class="active">Appointments</li>
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

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>
                                <i class="fa fa-calendar"></i> Appointments
                                <?php if($this->permission1->method('appointments','create')->access()){ ?>
                                <a href="<?php echo base_url('appointments/book'); ?>" class="btn btn-success btn-sm pull-right">
                                    <i class="fa fa-plus"></i> Book Appointment
                                </a>
                                <a href="<?php echo base_url('appointments/calendar'); ?>" class="btn btn-info btn-sm pull-right" style="margin-right: 5px;">
                                    <i class="fa fa-calendar"></i> Calendar View
                                </a>
                                <?php } ?>
                            </h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        
                        <!-- Statistics -->
                        <div class="row" style="margin-bottom: 20px;">
                            <div class="col-sm-3">
                                <div class="alert alert-info">
                                    <h4><?php echo isset($stats['today_total']) ? $stats['today_total'] : 0; ?></h4>
                                    <p>Today's Total</p>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="alert alert-warning">
                                    <h4><?php echo isset($stats['scheduled']) ? $stats['scheduled'] : 0; ?></h4>
                                    <p>Scheduled</p>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="alert alert-success">
                                    <h4><?php echo isset($stats['completed']) ? $stats['completed'] : 0; ?></h4>
                                    <p>Completed</p>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <!-- Filter Form -->
                                <form method="get" action="<?php echo base_url('appointments'); ?>">
                                    <div class="form-group">
                                        <select name="status" class="form-control" onchange="this.form.submit()">
                                            <option value="">All Statuses</option>
                                            <option value="Scheduled" <?php echo (isset($filter['status']) && $filter['status'] == 'Scheduled') ? 'selected' : ''; ?>>Scheduled</option>
                                            <option value="Confirmed" <?php echo (isset($filter['status']) && $filter['status'] == 'Confirmed') ? 'selected' : ''; ?>>Confirmed</option>
                                            <option value="In-Progress" <?php echo (isset($filter['status']) && $filter['status'] == 'In-Progress') ? 'selected' : ''; ?>>In Progress</option>
                                            <option value="Completed" <?php echo (isset($filter['status']) && $filter['status'] == 'Completed') ? 'selected' : ''; ?>>Completed</option>
                                            <option value="Cancelled" <?php echo (isset($filter['status']) && $filter['status'] == 'Cancelled') ? 'selected' : ''; ?>>Cancelled</option>
                                        </select>
                                    </div>
                                </form>
                            </div>
                        </div>
                        
                        <!-- Appointments Table -->
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Apt. #</th>
                                        <th>Date & Time</th>
                                        <th>Patient</th>
                                        <th>Doctor</th>
                                        <th>Type</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if (!empty($appointments)): ?>
                                        <?php foreach ($appointments as $apt): ?>
                                            <tr>
                                                <td><strong><?php echo $apt->appointment_number; ?></strong></td>
                                                <td>
                                                    <?php echo date('M d, Y', strtotime($apt->appointment_date)); ?><br>
                                                    <small class="text-muted"><?php echo date('h:i A', strtotime($apt->appointment_time)); ?></small>
                                                </td>
                                                <td>
                                                    <strong><?php echo $apt->patient_name; ?></strong><br>
                                                    <small class="text-muted"><?php echo $apt->patient_code; ?></small>
                                                </td>
                                                <td><?php echo $apt->doctor_name ? $apt->doctor_name : 'Not assigned'; ?></td>
                                                <td><span class="label label-default"><?php echo $apt->appointment_type; ?></span></td>
                                                <td>
                                                    <?php
                                                    $status_class = array(
                                                        'Scheduled' => 'label-info',
                                                        'Confirmed' => 'label-primary',
                                                        'In-Progress' => 'label-warning',
                                                        'Completed' => 'label-success',
                                                        'Cancelled' => 'label-danger',
                                                        'No-Show' => 'label-default'
                                                    );
                                                    $class = isset($status_class[$apt->status]) ? $status_class[$apt->status] : 'label-default';
                                                    ?>
                                                    <span class="label <?php echo $class; ?>"><?php echo $apt->status; ?></span>
                                                </td>
                                                <td>
                                                    <div class="btn-group">
                                                        <a href="<?php echo base_url('appointments/view/'.$apt->appointment_id); ?>" 
                                                           class="btn btn-info btn-xs" title="View">
                                                            <i class="fa fa-eye"></i>
                                                        </a>
                                                        <?php if($this->permission1->method('appointments','update')->access()){ ?>
                                                        <a href="<?php echo base_url('appointments/edit/'.$apt->appointment_id); ?>" 
                                                           class="btn btn-primary btn-xs" title="Edit">
                                                            <i class="fa fa-edit"></i>
                                                        </a>
                                                        <?php } ?>
                                                        <?php if($apt->status != 'Completed' && $apt->status != 'Cancelled'){ ?>
                                                            <?php if($this->permission1->method('appointments','update')->access()){ ?>
                                                            <a href="<?php echo base_url('appointments/update-status/'.$apt->appointment_id.'/Confirmed'); ?>" 
                                                               class="btn btn-success btn-xs" title="Confirm">
                                                                <i class="fa fa-check"></i>
                                                            </a>
                                                            <?php } ?>
                                                        <?php } ?>
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    <?php else: ?>
                                        <tr>
                                            <td colspan="7" class="text-center">
                                                <p style="padding: 30px;">
                                                    <i class="fa fa-calendar-o fa-3x text-muted"></i><br><br>
                                                    No appointments found.
                                                    <?php if($this->permission1->method('appointments','create')->access()){ ?>
                                                    <a href="<?php echo base_url('appointments/book'); ?>">Book an appointment</a>
                                                    <?php } ?>
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

    </section>
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









