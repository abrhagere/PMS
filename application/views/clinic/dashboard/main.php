<!-- Clinic Dashboard with PMS Style -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-network"></i>
        </div>
        <div class="header-title">
            <h1>Clinic Dashboard</h1>
            <small>Clinic Management System</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li class="active">Clinic Dashboard</li>
            </ol>
        </div>
    </section>

    <!-- Main content -->
    <section class="content">
        
        <!-- Alert Messages -->
        <?php
            $message = $this->session->userdata('message');
            if (isset($message)) {
        ?>
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $message ?>                    
        </div>
        <?php 
            $this->session->unset_userdata('message');
            }
            $error_message = $this->session->userdata('error_message');
            if (isset($error_message)) {
        ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $error_message ?>                    
        </div>
        <?php 
            $this->session->unset_userdata('error_message');
            }
        ?>

        <!-- Statistics Boxes -->
        <div class="row">
            
            <!-- Total Patients -->
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                            <a href="<?php echo base_url('patients'); ?>" style="color:#000">
                                <h2>
                                    <span class="count-number"><?php echo isset($patient_stats['total']) ? $patient_stats['total'] : 0; ?></span> 
                                    <span class="slight"><i class="fa fa-play fa-rotate-270 text-info"></i></span>
                                </h2>
                            </a>
                            <div class="small">Total Patients</div>
                            <div class="small text-success">Today: <?php echo isset($patient_stats['today']) ? $patient_stats['today'] : 0; ?></div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Today's Appointments -->
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                            <a href="<?php echo base_url('appointments'); ?>" style="color:#000">
                                <h2>
                                    <span class="count-number"><?php echo isset($appointment_stats['today_total']) ? $appointment_stats['today_total'] : 0; ?></span> 
                                    <span class="slight"><i class="fa fa-play fa-rotate-270 text-warning"></i></span>
                                </h2>
                            </a>
                            <div class="small">Today's Appointments</div>
                            <div class="small text-warning">Pending: <?php echo isset($appointment_stats['today_pending']) ? $appointment_stats['today_pending'] : 0; ?></div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Completed Today -->
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                            <a href="<?php echo base_url('appointments?status=completed'); ?>" style="color:#000">
                                <h2>
                                    <span class="count-number"><?php echo isset($appointment_stats['today_completed']) ? $appointment_stats['today_completed'] : 0; ?></span> 
                                    <span class="slight"><i class="fa fa-play fa-rotate-270 text-success"></i></span>
                                </h2>
                            </a>
                            <div class="small">Completed Today</div>
                            <div class="small text-muted">Appointments</div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- In Progress -->
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                            <a href="<?php echo base_url('appointments?status=in-progress'); ?>" style="color:#000">
                                <h2>
                                    <span class="count-number"><?php echo isset($appointment_stats['today_in_progress']) ? $appointment_stats['today_in_progress'] : 0; ?></span> 
                                    <span class="slight"><i class="fa fa-play fa-rotate-270 text-danger"></i></span>
                                </h2>
                            </a>
                            <div class="small">In Progress</div>
                            <div class="small text-muted">Currently Attending</div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Quick Actions -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Quick Actions</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="btn-group" role="group">
                            <a href="<?php echo base_url('patients/add'); ?>" class="btn btn-success">
                                <i class="fa fa-user-plus"></i> Register New Patient
                            </a>
                            <a href="<?php echo base_url('appointments/book'); ?>" class="btn btn-info">
                                <i class="fa fa-calendar-plus-o"></i> Book Appointment
                            </a>
                            <a href="<?php echo base_url('patients'); ?>" class="btn btn-primary">
                                <i class="fa fa-users"></i> View Patients
                            </a>
                            <a href="<?php echo base_url('appointments'); ?>" class="btn btn-warning">
                                <i class="fa fa-calendar"></i> View Appointments
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Today's Appointments Schedule -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Today's Appointment Schedule</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr class="info">
                                        <th>Time</th>
                                        <th>Patient</th>
                                        <th>Contact</th>
                                        <th>Doctor</th>
                                        <th>Type</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if (!empty($today_appointments)): ?>
                                        <?php foreach ($today_appointments as $apt): ?>
                                            <tr>
                                                <td><strong><?php echo date('h:i A', strtotime($apt->appointment_time)); ?></strong></td>
                                                <td>
                                                    <strong><?php echo $apt->patient_name; ?></strong><br>
                                                    <small class="text-muted"><?php echo $apt->patient_code; ?></small>
                                                </td>
                                                <td><?php echo $apt->patient_phone; ?></td>
                                                <td><?php echo $apt->doctor_name; ?></td>
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
                                                <td class="text-center">
                                                    <a href="<?php echo base_url('appointments/view/'.$apt->appointment_id); ?>" 
                                                       class="btn btn-xs btn-info" title="View Appointment">
                                                        <i class="fa fa-eye"></i>
                                                    </a>
                                                    <a href="<?php echo base_url('patients/view/'.$apt->patient_id); ?>" 
                                                       class="btn btn-xs btn-primary" title="Patient Profile">
                                                        <i class="fa fa-user"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    <?php else: ?>
                                        <tr>
                                            <td colspan="7" class="text-center">
                                                <div style="padding: 30px;">
                                                    <i class="fa fa-calendar-o fa-3x text-muted"></i><br><br>
                                                    <h4>No appointments scheduled for today</h4>
                                                    <p>
                                                        <a href="<?php echo base_url('appointments/book'); ?>" class="btn btn-sm btn-success">
                                                            <i class="fa fa-plus"></i> Book New Appointment
                                                        </a>
                                                    </p>
                                                </div>
                                            </td>
                                        </tr>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- This Month Statistics -->
        <div class="row">
            <div class="col-sm-6">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>This Month Summary</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered">
                            <tr>
                                <td><strong>New Patients Registered:</strong></td>
                                <td class="text-right"><?php echo isset($patient_stats['this_month']) ? $patient_stats['this_month'] : 0; ?></td>
                            </tr>
                            <tr>
                                <td><strong>Total Appointments:</strong></td>
                                <td class="text-right">-</td>
                            </tr>
                            <tr>
                                <td><strong>Consultations Completed:</strong></td>
                                <td class="text-right">-</td>
                            </tr>
                            <tr>
                                <td><strong>Prescriptions Issued:</strong></td>
                                <td class="text-right">-</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Quick Links</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <a href="<?php echo base_url('patients'); ?>">
                                    <i class="fa fa-users text-info"></i> Patient Management
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="<?php echo base_url('appointments'); ?>">
                                    <i class="fa fa-calendar text-warning"></i> Appointment Calendar
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="<?php echo base_url('consultations'); ?>">
                                    <i class="fa fa-stethoscope text-success"></i> Consultations
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a href="<?php echo base_url('clinic/reports'); ?>">
                                    <i class="fa fa-file-text text-primary"></i> Reports & Analytics
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

