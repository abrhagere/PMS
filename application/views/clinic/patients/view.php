<!-- Patient Profile View with Tabs -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-user"></i></div>
        <div class="header-title">
            <h1>Patient Profile</h1>
            <small><?php echo $patient->patient_code; ?> - <?php echo $patient->first_name . ' ' . $patient->last_name; ?></small>
        </div>
    </section>

    <section class="content">
        <style>
        /* Patient View Custom Styles - Scrollable Tabs */
        .visit-tabs-container {
            position: relative !important;
            overflow-x: auto !important;
            overflow-y: hidden !important;
            -webkit-overflow-scrolling: touch !important;
            background: #f5f5f5 !important;
            border-bottom: 2px solid #ddd !important;
        }
        .visit-tabs {
            display: flex !important;
            flex-wrap: nowrap !important;
            white-space: nowrap !important;
            margin: 0 !important;
            padding: 0 !important;
            border-bottom: none !important;
            min-width: 100% !important;
        }
        .visit-tabs > li {
            float: none !important;
            display: inline-block !important;
            white-space: nowrap !important;
            margin: 0 !important;
        }
        .nav-tabs.visit-tabs > li > a,
        .visit-tabs > li > a {
            padding: 12px 20px !important;
            color: #666 !important;
            border: none !important;
            border-bottom: 3px solid transparent !important;
            border-radius: 0 !important;
            font-weight: 500 !important;
            white-space: nowrap !important;
            transition: all 0.3s ease !important;
        }
        .nav-tabs.visit-tabs > li > a:hover,
        .visit-tabs > li > a:hover {
            background-color: #f0f0f0 !important;
            color: #1a237e !important;
            border-bottom-color: #1a237e !important;
        }
        .nav-tabs.visit-tabs > li.active > a,
        .nav-tabs.visit-tabs > li.active > a:hover,
        .nav-tabs.visit-tabs > li.active > a:focus,
        .visit-tabs > li.active > a,
        .visit-tabs > li.active > a:hover,
        .visit-tabs > li.active > a:focus {
            color: #1a237e !important;
            background-color: #fff !important;
            border-bottom-color: #1a237e !important;
            font-weight: bold !important;
        }
        .visit-tabs > li > a i {
            margin-right: 5px;
        }
        .visit-tabs-container::-webkit-scrollbar {
            height: 8px;
        }
        .visit-tabs-container::-webkit-scrollbar-track {
            background: #f1f1f1;
        }
        .visit-tabs-container::-webkit-scrollbar-thumb {
            background: #888;
            border-radius: 4px;
        }
        .visit-tabs-container::-webkit-scrollbar-thumb:hover {
            background: #555;
        }
        .tab-content {
            background: #fff;
        }
        .tab-pane {
            animation: fadeIn 0.3s;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @media (max-width: 768px) {
            .visit-tabs > li > a {
                padding: 10px 15px;
                font-size: 12px;
            }
            .visit-tabs > li > a i {
                display: none;
            }
        }
        </style>
        <?php if ($this->session->flashdata('message')): ?>
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <?php echo $this->session->flashdata('message'); ?>
        </div>
        <?php endif; ?>

        <div class="row">
            <!-- Patient Info Sidebar -->
            <div class="col-md-3">
                <div class="panel panel-bd">
                    <div class="panel-body text-center" style="padding: 20px;">
                        <?php if (!empty($patient->photo)): ?>
                            <img src="<?php echo base_url($patient->photo); ?>" 
                                 alt="<?php echo $patient->first_name; ?>" 
                                 class="img-circle" 
                                 style="width: 120px; height: 120px; border: 4px solid #1a237e; margin-bottom: 15px;">
                        <?php else: ?>
                            <div style="width: 120px; height: 120px; background: #1a237e; border-radius: 50%; display: inline-flex; align-items: center; justify-content: center; margin-bottom: 15px; border: 4px solid #1a237e;">
                                <i class="fa fa-user fa-4x" style="color: white;"></i>
                            </div>
                        <?php endif; ?>
                        
                        <h3 style="margin: 10px 0; color: #1a237e; font-weight: bold;">
                            <?php echo $patient->first_name . ' ' . $patient->last_name; ?>
                        </h3>
                        <p style="color: #666; margin-bottom: 5px;">
                            <strong>ID:</strong> <?php echo $patient->patient_code; ?>
                        </p>
                        <p style="color: #666; margin-bottom: 5px;">
                            <strong>Gender:</strong> <?php echo $patient->gender; ?>
                        </p>
                        <p style="color: #666; margin-bottom: 5px;">
                            <strong>Age:</strong> 
                            <?php 
                            if ($patient->date_of_birth) {
                                $dob = new DateTime($patient->date_of_birth);
                                $now = new DateTime();
                                $age = $now->diff($dob);
                                echo $age->y . ' years';
                            } else {
                                echo $patient->age_years . ' years';
                            }
                            ?>
                        </p>
                        
                        <div class="btn-group-vertical" style="width: 100%;">
                            <a href="<?php echo base_url('appointments/book?patient='.$patient->patient_id); ?>" 
                               class="btn btn-primary btn-sm" style="margin-bottom: 5px;">
                                <i class="fa fa-calendar-plus-o"></i> Book Appointment
                            </a>
                            <a href="<?php echo base_url('vitals/record/'.$patient->patient_id); ?>" 
                               class="btn btn-info btn-sm" style="margin-bottom: 5px;">
                                <i class="fa fa-heartbeat"></i> Record Vitals
                            </a>
                            <?php if($this->permission1->module('consultations')->access()): ?>
                            <a href="<?php echo base_url('consultations/create?patient='.$patient->patient_id); ?>" 
                               class="btn btn-success btn-sm" style="margin-bottom: 5px;">
                                <i class="fa fa-stethoscope"></i> New Consultation
                            </a>
                            <?php endif; ?>
                            <?php 
                            // Show payment button for reception/cashier roles
                            $user_id = $this->session->userdata('user_id');
                            $is_reception = false;
                            if ($user_id) {
                                $user_id_str = (string)$user_id;
                                $this->db->select('sr.type');
                                $this->db->from('sec_userrole sur');
                                $this->db->join('sec_role sr', 'sr.id = sur.roleid');
                                $this->db->where('sur.user_id', $user_id_str);
                                $this->db->where_in('sr.type', array('Reception', 'Cashier'));
                                $query = $this->db->get();
                                $is_reception = $query->num_rows() > 0;
                            }
                            if ($is_reception):
                            ?>
                            <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#paymentModal" style="margin-bottom: 5px;">
                                <i class="fa fa-money"></i> Process Payment
                            </button>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>

                <!-- Quick Info -->
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <h4>Quick Info</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-condensed">
                            <tr>
                                <td><strong>Phone:</strong></td>
                                <td><?php echo $patient->phone; ?></td>
                            </tr>
                            <?php if ($patient->email): ?>
                            <tr>
                                <td><strong>Email:</strong></td>
                                <td><?php echo $patient->email; ?></td>
                            </tr>
                            <?php endif; ?>
                            <tr>
                                <td><strong>Address:</strong></td>
                                <td>
                                    <?php 
                                    $address_parts = array_filter([
                                        $patient->city,
                                        $patient->zone,
                                        $patient->region,
                                        $patient->country
                                    ]);
                                    echo implode(', ', $address_parts);
                                    ?>
                                </td>
                            </tr>
                            <?php if ($patient->marital_status): ?>
                            <tr>
                                <td><strong>Marital:</strong></td>
                                <td><?php echo ucfirst($patient->marital_status); ?></td>
                            </tr>
                            <?php endif; ?>
                        </table>
                    </div>
                </div>
            </div>

            <!-- Main Content with Tabs -->
            <div class="col-md-9">
                <div class="panel panel-bd">
                    <div class="panel-body" style="padding: 0;">
                        <!-- Scrollable Tabs -->
                        <div class="visit-tabs-container">
                            <ul class="nav nav-tabs visit-tabs" role="tablist" id="visitTabs">
                                <li role="presentation" class="active">
                                    <a href="#triage" aria-controls="triage" role="tab" data-toggle="tab">
                                        <i class="fa fa-ambulance"></i> TRIAGE
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#summary" aria-controls="summary" role="tab" data-toggle="tab">
                                        <i class="fa fa-file-text"></i> SUMMARY
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#history" aria-controls="history" role="tab" data-toggle="tab">
                                        <i class="fa fa-history"></i> HISTORY
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#physical" aria-controls="physical" role="tab" data-toggle="tab">
                                        <i class="fa fa-stethoscope"></i> P/E
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#diagnosis" aria-controls="diagnosis" role="tab" data-toggle="tab">
                                        <i class="fa fa-clipboard"></i> DIAGNOSIS
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#investigation" aria-controls="investigation" role="tab" data-toggle="tab">
                                        <i class="fa fa-flask"></i> INVESTIGATION
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#procedures" aria-controls="procedures" role="tab" data-toggle="tab">
                                        <i class="fa fa-medkit"></i> PROCEDURES
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#prescription" aria-controls="prescription" role="tab" data-toggle="tab">
                                        <i class="fa fa-file-text-o"></i> PRESCRIPTION
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#admission" aria-controls="admission" role="tab" data-toggle="tab">
                                        <i class="fa fa-bed"></i> ADMISSION
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#print" aria-controls="print" role="tab" data-toggle="tab">
                                        <i class="fa fa-print"></i> PRINT
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <!-- Tab Content -->
                        <div class="tab-content" style="padding: 20px; min-height: 400px;">
                            <!-- TRIAGE Tab -->
                            <div role="tabpanel" class="tab-pane active" id="triage">
                                <div class="row" style="margin-bottom: 20px;">
                                    <div class="col-md-6">
                                        <h3 style="color: #1a237e; margin: 0;">
                                            <i class="fa fa-ambulance"></i> Triage Information
                                        </h3>
                                    </div>
                                    <div class="col-md-6 text-right">
                                        <a href="<?php echo base_url('vitals/record/'.$patient->patient_id); ?>" 
                                           class="btn btn-success btn-lg">
                                            <i class="fa fa-plus-circle"></i> Add Triage
                                        </a>
                                    </div>
                                </div>
                                
                                <?php if (isset($latest_visit) && $latest_visit): ?>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4>Visit Information</h4>
                                            </div>
                                            <div class="panel-body">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <th width="40%">Visit Date:</th>
                                                        <td><?php echo date('F d, Y', strtotime($latest_visit->appointment_date)); ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Visit Time:</th>
                                                        <td><?php echo date('h:i A', strtotime($latest_visit->appointment_time)); ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Doctor:</th>
                                                        <td><?php echo $latest_visit->doctor_name ? 'Dr. ' . $latest_visit->doctor_name : 'Not assigned'; ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th>Status:</th>
                                                        <td>
                                                            <span class="label label-<?php 
                                                                echo $latest_visit->status == 'Completed' ? 'success' : 
                                                                    ($latest_visit->status == 'In-Progress' ? 'warning' : 'info'); 
                                                            ?>">
                                                                <?php echo $latest_visit->status; ?>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4>Vital Signs</h4>
                                            </div>
                                            <div class="panel-body">
                                                <?php if (isset($vitals) && !empty($vitals)): 
                                                    $latest_vitals = $vitals[0];
                                                ?>
                                                <table class="table table-bordered">
                                                    <?php if ($latest_vitals->temperature): ?>
                                                    <tr>
                                                        <th width="40%">Temperature:</th>
                                                        <td><?php echo $latest_vitals->temperature; ?> °C</td>
                                                    </tr>
                                                    <?php endif; ?>
                                                    <?php if ($latest_vitals->bp_systolic && $latest_vitals->bp_diastolic): ?>
                                                    <tr>
                                                        <th>Blood Pressure:</th>
                                                        <td><?php echo $latest_vitals->bp_systolic . '/' . $latest_vitals->bp_diastolic; ?> mmHg</td>
                                                    </tr>
                                                    <?php endif; ?>
                                                    <?php if ($latest_vitals->pulse): ?>
                                                    <tr>
                                                        <th>Heart Rate:</th>
                                                        <td><?php echo $latest_vitals->pulse; ?> bpm</td>
                                                    </tr>
                                                    <?php endif; ?>
                                                    <?php if ($latest_vitals->respiratory_rate): ?>
                                                    <tr>
                                                        <th>Respiratory Rate:</th>
                                                        <td><?php echo $latest_vitals->respiratory_rate; ?> /min</td>
                                                    </tr>
                                                    <?php endif; ?>
                                                    <?php if ($latest_vitals->oxygen_saturation): ?>
                                                    <tr>
                                                        <th>SpO2:</th>
                                                        <td><?php echo $latest_vitals->oxygen_saturation; ?>%</td>
                                                    </tr>
                                                    <?php endif; ?>
                                                    <?php if ($latest_vitals->weight): ?>
                                                    <tr>
                                                        <th>Weight:</th>
                                                        <td><?php echo $latest_vitals->weight; ?> kg</td>
                                                    </tr>
                                                    <?php endif; ?>
                                                </table>
                                                <?php else: ?>
                                                <p class="text-muted">No vital signs recorded yet.</p>
                                                <a href="<?php echo base_url('vitals/record/'.$patient->patient_id); ?>" class="btn btn-primary btn-sm">
                                                    <i class="fa fa-plus"></i> Record Vitals
                                                </a>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php else: ?>
                                <div class="alert alert-info">
                                    <i class="fa fa-info-circle"></i> No recent visit found. 
                                    <a href="<?php echo base_url('appointments/book?patient='.$patient->patient_id); ?>">Book an appointment</a>
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- SUMMARY Tab -->
                            <div role="tabpanel" class="tab-pane" id="summary">
                                <h3 style="color: #1a237e; margin-bottom: 20px;">
                                    <i class="fa fa-file-text"></i> Patient Summary
                                </h3>
                                
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4>Demographics</h4>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th width="40%">Full Name:</th>
                                                                <td><?php echo $patient->first_name . ' ' . ($patient->middle_name ? $patient->middle_name . ' ' : '') . $patient->last_name; ?></td>
                                                            </tr>
                                                            <tr>
                                                                <th>Patient Code:</th>
                                                                <td><strong><?php echo $patient->patient_code; ?></strong></td>
                                                            </tr>
                                                            <tr>
                                                                <th>Date of Birth:</th>
                                                                <td><?php echo $patient->date_of_birth ? date('F d, Y', strtotime($patient->date_of_birth)) : 'N/A'; ?></td>
                                                            </tr>
                                                            <tr>
                                                                <th>Gender:</th>
                                                                <td><?php echo $patient->gender; ?></td>
                                                            </tr>
                                                            <tr>
                                                                <th>Marital Status:</th>
                                                                <td><?php echo $patient->marital_status ? ucfirst($patient->marital_status) : 'N/A'; ?></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th width="40%">Phone:</th>
                                                                <td><?php echo $patient->phone; ?></td>
                                                            </tr>
                                                            <?php if ($patient->email): ?>
                                                            <tr>
                                                                <th>Email:</th>
                                                                <td><?php echo $patient->email; ?></td>
                                                            </tr>
                                                            <?php endif; ?>
                                                            <tr>
                                                                <th>Address:</th>
                                                                <td>
                                                                    <?php 
                                                                    $address = array_filter([
                                                                        $patient->house_number,
                                                                        $patient->kebele,
                                                                        $patient->woreda,
                                                                        $patient->city,
                                                                        $patient->zone,
                                                                        $patient->region,
                                                                        $patient->country
                                                                    ]);
                                                                    echo implode(', ', $address) ?: 'N/A';
                                                                    ?>
                                                                </td>
                                                            </tr>
                                                            <?php if ($patient->national_id): ?>
                                                            <tr>
                                                                <th>National ID:</th>
                                                                <td><?php echo $patient->national_id; ?></td>
                                                            </tr>
                                                            <?php endif; ?>
                                                            <?php if ($patient->insurance_provider): ?>
                                                            <tr>
                                                                <th>Insurance:</th>
                                                                <td><?php echo $patient->insurance_provider; ?> (<?php echo $patient->insurance_number; ?>)</td>
                                                            </tr>
                                                            <?php endif; ?>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <?php if ($patient->allergies || $patient->chronic_conditions): ?>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4>Medical Alerts</h4>
                                            </div>
                                            <div class="panel-body">
                                                <?php if ($patient->allergies): ?>
                                                <div class="alert alert-warning">
                                                    <strong><i class="fa fa-exclamation-triangle"></i> Allergies:</strong> <?php echo $patient->allergies; ?>
                                                </div>
                                                <?php endif; ?>
                                                <?php if ($patient->chronic_conditions): ?>
                                                <div class="alert alert-info">
                                                    <strong><i class="fa fa-info-circle"></i> Chronic Conditions:</strong> <?php echo $patient->chronic_conditions; ?>
                                                </div>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- HISTORY Tab -->
                            <div role="tabpanel" class="tab-pane" id="history">
                                <h3 style="color: #1a237e; margin-bottom: 20px;">
                                    <i class="fa fa-history"></i> Medical History
                                </h3>
                                
                                <?php if (isset($consultations) && !empty($consultations)): ?>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4>Consultation History</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Consultation #</th>
                                                        <th>Chief Complaint</th>
                                                        <th>Diagnosis</th>
                                                        <th>Doctor</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($consultations as $consultation): ?>
                                                    <tr>
                                                        <td><?php echo date('M d, Y', strtotime($consultation->consultation_date)); ?></td>
                                                        <td><?php echo $consultation->consultation_number; ?></td>
                                                        <td><?php echo substr($consultation->chief_complaint, 0, 50) . '...'; ?></td>
                                                        <td><?php echo substr($consultation->diagnosis, 0, 50) . '...'; ?></td>
                                                        <td><?php echo $consultation->doctor_name; ?></td>
                                                        <td>
                                                            <a href="<?php echo base_url('consultations/view/'.$consultation->consultation_id); ?>" 
                                                               class="btn btn-xs btn-info">
                                                                <i class="fa fa-eye"></i> View
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <?php else: ?>
                                <div class="alert alert-info">
                                    <i class="fa fa-info-circle"></i> No consultation history found.
                                </div>
                                <?php endif; ?>

                                <?php if (isset($vitals) && !empty($vitals)): ?>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4>Vital Signs History</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Temperature</th>
                                                        <th>BP</th>
                                                        <th>Pulse</th>
                                                        <th>Resp Rate</th>
                                                        <th>SpO2</th>
                                                        <th>Weight</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($vitals as $vital): ?>
                                                    <tr>
                                                        <td><?php echo date('M d, Y h:i A', strtotime($vital->recorded_at)); ?></td>
                                                        <td><?php echo $vital->temperature ? $vital->temperature . ' °C' : '-'; ?></td>
                                                        <td><?php echo ($vital->bp_systolic && $vital->bp_diastolic) ? $vital->bp_systolic . '/' . $vital->bp_diastolic : '-'; ?></td>
                                                        <td><?php echo $vital->pulse ? $vital->pulse . ' bpm' : '-'; ?></td>
                                                        <td><?php echo $vital->respiratory_rate ? $vital->respiratory_rate . ' /min' : '-'; ?></td>
                                                        <td><?php echo $vital->oxygen_saturation ? $vital->oxygen_saturation . '%' : '-'; ?></td>
                                                        <td><?php echo $vital->weight ? $vital->weight . ' kg' : '-'; ?></td>
                                                    </tr>
                                                    <?php endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- PHYSICAL EXAMINATION Tab -->
                            <div role="tabpanel" class="tab-pane" id="physical">
                                <h3 style="color: #1a237e; margin-bottom: 20px;">
                                    <i class="fa fa-stethoscope"></i> Physical Examination
                                </h3>
                                
                                <?php if (isset($consultations) && !empty($consultations)): 
                                    $latest_consultation = $consultations[0];
                                ?>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4>Latest Physical Examination</h4>
                                        <small>Date: <?php echo date('F d, Y', strtotime($latest_consultation->consultation_date)); ?></small>
                                    </div>
                                    <div class="panel-body">
                                        <?php if ($latest_consultation->physical_examination): ?>
                                        <div style="white-space: pre-wrap; padding: 15px; background: #f9f9f9; border-radius: 5px;">
                                            <?php echo nl2br(htmlspecialchars($latest_consultation->physical_examination)); ?>
                                        </div>
                                        <?php else: ?>
                                        <p class="text-muted">No physical examination notes recorded.</p>
                                        <?php endif; ?>
                                    </div>
                                </div>
                                <?php else: ?>
                                <div class="alert alert-info">
                                    <i class="fa fa-info-circle"></i> No physical examination records found.
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- DIAGNOSIS Tab -->
                            <div role="tabpanel" class="tab-pane" id="diagnosis">
                                <h3 style="color: #1a237e; margin-bottom: 20px;">
                                    <i class="fa fa-clipboard"></i> Diagnosis
                                </h3>
                                
                                <?php if (isset($consultations) && !empty($consultations)): ?>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4>Diagnosis History</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Consultation #</th>
                                                        <th>Diagnosis</th>
                                                        <th>Doctor</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($consultations as $consultation): ?>
                                                    <tr>
                                                        <td><?php echo date('M d, Y', strtotime($consultation->consultation_date)); ?></td>
                                                        <td><?php echo $consultation->consultation_number; ?></td>
                                                        <td>
                                                            <strong><?php echo nl2br(htmlspecialchars($consultation->diagnosis)); ?></strong>
                                                        </td>
                                                        <td><?php echo $consultation->doctor_name; ?></td>
                                                        <td>
                                                            <a href="<?php echo base_url('consultations/view/'.$consultation->consultation_id); ?>" 
                                                               class="btn btn-xs btn-info">
                                                                <i class="fa fa-eye"></i> View
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <?php else: ?>
                                <div class="alert alert-info">
                                    <i class="fa fa-info-circle"></i> No diagnosis records found.
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- INVESTIGATION Tab -->
                            <div role="tabpanel" class="tab-pane" id="investigation">
                                <h3 style="color: #1a237e; margin-bottom: 20px;">
                                    <i class="fa fa-flask"></i> Investigations
                                </h3>
                                
                                <!-- Investigation Type Sub-Tabs -->
                                <ul class="nav nav-tabs investigation-type-tabs" role="tablist" style="margin-bottom: 15px;">
                                    <li role="presentation" class="active">
                                        <a href="#lab-investigation" aria-controls="lab-investigation" role="tab" data-toggle="tab">
                                            <i class="fa fa-flask"></i> Laboratory
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#radiology-investigation" aria-controls="radiology-investigation" role="tab" data-toggle="tab">
                                            <i class="fa fa-x-ray"></i> Radiology
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#ecg-investigation" aria-controls="ecg-investigation" role="tab" data-toggle="tab">
                                            <i class="fa fa-heartbeat"></i> ECG
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#pathology-investigation" aria-controls="pathology-investigation" role="tab" data-toggle="tab">
                                            <i class="fa fa-microscope"></i> Pathology
                                        </a>
                                    </li>
                                </ul>

                                <div class="tab-content investigation-content">
                                    <!-- Laboratory Tab -->
                                    <div role="tabpanel" class="tab-pane active" id="lab-investigation">
                                        <!-- Laboratory Category Sub-Tabs (Scrollable) -->
                                        <div class="lab-category-container">
                                            <ul class="nav nav-tabs lab-category-tabs" role="tablist" id="labCategoryTabs">
                                                <?php
                                                // Map category names to tab IDs
                                                $category_map = array(
                                                    'Hematology' => 'hematology',
                                                    'Serology' => 'serology',
                                                    'Biochemistry' => 'clinical-chemistry',
                                                    'Clinical Chemistry' => 'clinical-chemistry',
                                                    'Parasitology' => 'parasitology',
                                                    'Urine Chemical Analysis' => 'urine-chemical',
                                                    'Urine Microscopy' => 'urine-microscopy',
                                                    'Hormones' => 'hormones'
                                                );
                                                
                                                // Get all unique categories from database
                                                $db_categories = array();
                                                if (isset($lab_tests_by_category) && !empty($lab_tests_by_category)) {
                                                    $db_categories = array_keys($lab_tests_by_category);
                                                }
                                                
                                                // Default categories to show (if no tests in database yet)
                                                $default_categories = array('Hematology', 'Serology', 'Clinical Chemistry', 'Parasitology', 'Urine Chemical Analysis', 'Urine Microscopy', 'Hormones');
                                                $all_categories = !empty($db_categories) ? $db_categories : $default_categories;
                                                
                                                $first_tab = true;
                                                foreach ($all_categories as $category):
                                                    $tab_id = isset($category_map[$category]) ? $category_map[$category] : strtolower(str_replace(' ', '-', $category));
                                                    $tests = isset($lab_tests_by_category[$category]) ? $lab_tests_by_category[$category] : array();
                                                ?>
                                                <li role="presentation" class="<?php echo $first_tab ? 'active' : ''; ?>">
                                                    <a href="#<?php echo $tab_id; ?>" aria-controls="<?php echo $tab_id; ?>" role="tab" data-toggle="tab">
                                                        <?php echo htmlspecialchars($category); ?>
                                                        <?php if (!empty($tests)): ?>
                                                            <span class="badge"><?php echo count($tests); ?></span>
                                                        <?php endif; ?>
                                                    </a>
                                                </li>
                                                <?php 
                                                    $first_tab = false;
                                                endforeach; 
                                                ?>
                                            </ul>
                                        </div>

                                        <!-- Action Bar -->
                                        <div class="row" style="margin: 15px 0;">
                                            <div class="col-md-6">
                                                <select class="form-control" id="queueSelect" style="display: inline-block; width: 200px;">
                                                    <option value="">Select Queue</option>
                                                    <option value="normal">Normal Queue</option>
                                                    <option value="urgent">Urgent Queue</option>
                                                    <option value="stat">STAT Queue</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6 text-right">
                                                <button type="button" class="btn btn-success" id="orderBtn" onclick="createLabOrder()">
                                                    <i class="fa fa-check"></i> Order
                                                </button>
                                                <button type="button" class="btn btn-primary" id="totalBtn" onclick="showTotal()">
                                                    Total → <span id="totalAmount">0</span> ETB
                                                </button>
                                            </div>
                                        </div>

                                        <!-- Laboratory Test Categories Content -->
                                        <div class="tab-content lab-category-content" style="padding: 20px; background: #f9f9f9; border-radius: 5px;">
                                            <?php
                                            // Map category names to tab IDs (for URL-friendly IDs)
                                            $category_map = array(
                                                'Hematology' => 'hematology',
                                                'Serology' => 'serology',
                                                'Biochemistry' => 'clinical-chemistry',
                                                'Clinical Chemistry' => 'clinical-chemistry',
                                                'Parasitology' => 'parasitology',
                                                'Urine Chemical Analysis' => 'urine-chemical',
                                                'Urine Microscopy' => 'urine-microscopy',
                                                'Hormones' => 'hormones'
                                            );
                                            
                                            // Get all unique categories from database
                                            $db_categories = array();
                                            if (isset($lab_tests_by_category) && !empty($lab_tests_by_category)) {
                                                $db_categories = array_keys($lab_tests_by_category);
                                            }
                                            
                                            // Default categories to show (if no tests in database yet)
                                            $default_categories = array('Hematology', 'Serology', 'Clinical Chemistry', 'Parasitology', 'Urine Chemical Analysis', 'Urine Microscopy', 'Hormones');
                                            $all_categories = !empty($db_categories) ? $db_categories : $default_categories;
                                            
                                            $first_tab = true;
                                            foreach ($all_categories as $category):
                                                $tab_id = isset($category_map[$category]) ? $category_map[$category] : strtolower(str_replace(' ', '-', $category));
                                                $tests = isset($lab_tests_by_category[$category]) ? $lab_tests_by_category[$category] : array();
                                            ?>
                                            <div role="tabpanel" class="tab-pane <?php echo $first_tab ? 'active' : ''; ?>" id="<?php echo $tab_id; ?>">
                                                <?php if (!empty($tests)): ?>
                                                    <div class="row">
                                                        <?php foreach ($tests as $test): ?>
                                                            <div class="col-md-4" style="margin-bottom: 10px;">
                                                                <label class="test-item" style="cursor: pointer; display: block; padding: 8px; border: 1px solid #ddd; border-radius: 4px; background: #fff;">
                                                                    <input type="checkbox" 
                                                                           class="test-checkbox" 
                                                                           data-test-id="<?php echo $test->test_id; ?>"
                                                                           data-test="<?php echo htmlspecialchars($test->test_name); ?>" 
                                                                           data-price="<?php echo $test->price; ?>" 
                                                                           data-category="<?php echo htmlspecialchars($test->test_category); ?>"
                                                                           onchange="updateTotal()">
                                                                    <strong><?php echo htmlspecialchars($test->test_name); ?></strong>
                                                                    <?php if ($test->price > 0): ?>
                                                                        - <strong><?php echo number_format($test->price, 2); ?> ETB</strong>
                                                                    <?php endif; ?>
                                                                    <?php if (!empty($test->test_code)): ?>
                                                                        <br><small class="text-muted"><?php echo $test->test_code; ?></small>
                                                                    <?php endif; ?>
                                                                </label>
                                                            </div>
                                                        <?php endforeach; ?>
                                                    </div>
                                                <?php else: ?>
                                                    <div class="alert alert-info">
                                                        <i class="fa fa-info-circle"></i> No tests configured for this category yet. 
                                                        <a href="<?php echo base_url('lab_tests/add'); ?>" target="_blank">Add tests</a> to get started.
                                                    </div>
                                                <?php endif; ?>
                                            </div>
                                            <?php 
                                                $first_tab = false;
                                            endforeach; 
                                            ?>
                                        </div>
                                    </div>

                                    <!-- Radiology Tab -->
                                    <div role="tabpanel" class="tab-pane" id="radiology-investigation">
                                        <div class="alert alert-info">
                                            <i class="fa fa-info-circle"></i> Radiology investigations will be displayed here.
                                        </div>
                                    </div>

                                    <!-- ECG Tab -->
                                    <div role="tabpanel" class="tab-pane" id="ecg-investigation">
                                        <div class="alert alert-info">
                                            <i class="fa fa-info-circle"></i> ECG investigations will be displayed here.
                                        </div>
                                    </div>

                                    <!-- Pathology Tab -->
                                    <div role="tabpanel" class="tab-pane" id="pathology-investigation">
                                        <div class="alert alert-info">
                                            <i class="fa fa-info-circle"></i> Pathology investigations will be displayed here.
                                        </div>
                                    </div>
                                </div>

                                <!-- Lab Orders History -->
                                <?php if (isset($lab_orders) && !empty($lab_orders)): ?>
                                <div class="panel panel-default" style="margin-top: 30px;">
                                    <div class="panel-heading">
                                        <h4>Previous Lab Orders</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Order Date</th>
                                                        <th>Order #</th>
                                                        <th>Tests</th>
                                                        <th>Priority</th>
                                                        <th>Status</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($lab_orders as $order): ?>
                                                    <tr>
                                                        <td><?php echo date('M d, Y', strtotime($order->order_date)); ?></td>
                                                        <td><?php echo $order->order_number; ?></td>
                                                        <td>
                                                            <?php 
                                                            $tests = json_decode($order->tests, true);
                                                            if ($tests) {
                                                                echo implode(', ', array_column($tests, 'test_name'));
                                                            } else {
                                                                echo 'N/A';
                                                            }
                                                            ?>
                                                        </td>
                                                        <td>
                                                            <span class="label label-<?php 
                                                                echo $order->priority == 'Urgent' ? 'danger' : 
                                                                    ($order->priority == 'STAT' ? 'warning' : 'info'); 
                                                            ?>">
                                                                <?php echo $order->priority; ?>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="label label-<?php 
                                                                echo $order->status == 'Completed' ? 'success' : 
                                                                    ($order->status == 'In-Progress' ? 'warning' : 'default'); 
                                                            ?>">
                                                                <?php echo $order->status; ?>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <a href="<?php echo base_url('lab/orders/view/'.$order->order_id); ?>" 
                                                               class="btn btn-xs btn-info">
                                                                <i class="fa fa-eye"></i> View
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- PROCEDURES Tab -->
                            <div role="tabpanel" class="tab-pane" id="procedures">
                                <div class="row" style="margin-bottom: 20px;">
                                    <div class="col-md-6">
                                        <h3 style="color: #1a237e; margin: 0;">
                                            <i class="fa fa-medkit"></i> Procedures
                                        </h3>
                                    </div>
                                    <div class="col-md-6 text-right">
                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#newProcedureModal">
                                            <i class="fa fa-plus"></i> New Procedure
                                        </button>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4>Procedure History</h4>
                                    </div>
                                    <div class="panel-body">
                                        <?php 
                                        // Get procedures for this patient
                                        $procedures = array();
                                        try {
                                            // Check if procedures table exists
                                            if ($this->db->table_exists('procedures')) {
                                                $this->db->select('p.*, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
                                                $this->db->from('procedures p');
                                                $this->db->join('users u', 'u.user_id = p.doctor_id', 'left');
                                                $this->db->where('p.patient_id', $patient->patient_id);
                                                $this->db->order_by('p.procedure_date', 'DESC');
                                                $this->db->order_by('p.procedure_time', 'DESC');
                                                $procedures = $this->db->get()->result();
                                            }
                                        } catch (Exception $e) {
                                            $procedures = array();
                                        }
                                        ?>
                                        
                                        <?php if (!empty($procedures)): ?>
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Time</th>
                                                        <th>Procedure</th>
                                                        <th>Category</th>
                                                        <th>Urgency</th>
                                                        <th>Anesthesia</th>
                                                        <th>Doctor</th>
                                                        <th>Status</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($procedures as $proc): ?>
                                                    <tr>
                                                        <td><?php echo date('M d, Y', strtotime($proc->procedure_date)); ?></td>
                                                        <td><?php echo date('h:i A', strtotime($proc->procedure_time)); ?></td>
                                                        <td><strong><?php echo $proc->procedure_name; ?></strong></td>
                                                        <td><?php echo $proc->procedure_category; ?></td>
                                                        <td>
                                                            <span class="label label-<?php 
                                                                echo $proc->urgency == 'Emergency' ? 'danger' : 
                                                                    ($proc->urgency == 'Urgent' ? 'warning' : 'info'); 
                                                            ?>">
                                                                <?php echo $proc->urgency; ?>
                                                            </span>
                                                        </td>
                                                        <td><?php echo $proc->anesthesia ? $proc->anesthesia : 'N/A'; ?></td>
                                                        <td><?php echo $proc->doctor_name; ?></td>
                                                        <td>
                                                            <span class="label label-<?php 
                                                                echo $proc->status == 'Completed' ? 'success' : 
                                                                    ($proc->status == 'In-Progress' ? 'warning' : 'default'); 
                                                            ?>">
                                                                <?php echo $proc->status; ?>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="btn btn-xs btn-info" onclick="viewProcedure(<?php echo $proc->procedure_id; ?>)">
                                                                <i class="fa fa-eye"></i> View
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>
                                        <?php else: ?>
                                        <div class="alert alert-info">
                                            <i class="fa fa-info-circle"></i> No procedures recorded yet. Click "New Procedure" to add one.
                                        </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>

                            <!-- PRESCRIPTION Tab -->
                            <div role="tabpanel" class="tab-pane" id="prescription">
                                <div class="row" style="margin-bottom: 20px;">
                                    <div class="col-md-6">
                                        <h3 style="color: #1a237e; margin: 0;">
                                            <i class="fa fa-file-text-o"></i> Prescriptions
                                        </h3>
                                    </div>
                                    <div class="col-md-6 text-right">
                                        <button type="button" class="btn btn-primary btn-lg" onclick="showPrescribeForm()">
                                            <i class="fa fa-plus"></i> New Prescription
                                        </button>
                                    </div>
                                </div>

                                <!-- Prescribed Drugs Table Header -->
                                <div class="panel panel-default" id="prescribedDrugsTable" style="display: none;">
                                    <div class="panel-body" style="padding: 10px;">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="prescribedDrugsList">
                                                <thead style="background: #1a237e; color: white;">
                                                    <tr>
                                                        <th>DRUG</th>
                                                        <th>BRAND</th>
                                                        <th>DOSE</th>
                                                        <th>SIZE</th>
                                                        <th>TYPE</th>
                                                        <th>FREQUENCY</th>
                                                        <th>DURATION</th>
                                                        <th>AMOUNT</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td colspan="9" class="text-center text-muted">No data</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <!-- PRESCRIBE DRUGS Form -->
                                <div class="panel panel-default" id="prescribeDrugsForm" style="display: none;">
                                    <div class="panel-body" style="background: #f5f5f5; padding: 30px;">
                                        <h3 style="text-align: center; color: #333; margin-bottom: 30px; font-weight: bold;">
                                            PRESCRIBE DRUGS
                                        </h3>
                                        
                                        <form id="prescriptionForm" method="post" action="<?php echo base_url('prescriptions/create'); ?>">
                                            <input type="hidden" name="patient_id" value="<?php echo $patient->patient_id; ?>">
                                            <input type="hidden" name="doctor_id" value="<?php echo $this->session->userdata('user_id'); ?>">
                                            
                                            <!-- Row 1: Drug/Material and Brand -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Drug / Material <span class="text-danger">*</span>
                                                        </label>
                                                        <div class="input-group">
                                                            <input type="text" name="drug_search" id="drug_search" 
                                                                   class="form-control" placeholder="Search drug" 
                                                                   style="height: 45px; font-size: 14px;" required>
                                                            <span class="input-group-btn">
                                                                <button type="button" class="btn btn-default" onclick="searchDrug()" style="height: 45px;">
                                                                    <i class="fa fa-search"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                        <select name="product_id[]" id="product_id" class="form-control" 
                                                                style="height: 45px; font-size: 14px; margin-top: 5px;" required>
                                                            <option value="">Select Drug</option>
                                                            <?php 
                                                            // Get available medications
                                                            if (class_exists('Prescription_model')) {
                                                                $this->load->model('Prescription_model');
                                                                $medications = $this->Prescription_model->get_available_medications();
                                                                if ($medications) {
                                                                    foreach ($medications as $med) {
                                                                        echo '<option value="'.$med->product_id.'" data-brand="'.$med->brand.'" data-type="'.$med->type.'">'.$med->product_name.'</option>';
                                                                    }
                                                                }
                                                            }
                                                            ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">Brand</label>
                                                        <div class="input-group">
                                                            <select name="brand[]" id="brand" class="form-control" 
                                                                    style="height: 45px; font-size: 14px;">
                                                                <option value="">Select</option>
                                                            </select>
                                                            <span class="input-group-btn">
                                                                <button type="button" class="btn btn-default" style="height: 45px;">
                                                                    <i class="fa fa-search"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Row 2: Medicine Type, Strength, Str Unit, Dose, Dose Unit -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Medicine Type <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="medicine_type[]" id="medicine_type" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required>
                                                            <option value="Tablets">Tablets</option>
                                                            <option value="Capsules">Capsules</option>
                                                            <option value="Syrup">Syrup</option>
                                                            <option value="Injection">Injection</option>
                                                            <option value="Drops">Drops</option>
                                                            <option value="Cream">Cream</option>
                                                            <option value="Ointment">Ointment</option>
                                                            <option value="Other">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">Strength</label>
                                                        <input type="text" name="strength[]" id="strength" class="form-control" 
                                                               style="height: 45px; font-size: 14px;">
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Str Unit <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="str_unit[]" id="str_unit" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required>
                                                            <option value="mg">mg</option>
                                                            <option value="g">g</option>
                                                            <option value="ml">ml</option>
                                                            <option value="IU">IU</option>
                                                            <option value="%">%</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Dose <span class="text-danger">*</span>
                                                        </label>
                                                        <input type="text" name="dose[]" id="dose" class="form-control" 
                                                               placeholder="e.g., 1" style="height: 45px; font-size: 14px;" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Dose Unit <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="dose_unit[]" id="dose_unit" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required>
                                                            <option value="tablet">tablet</option>
                                                            <option value="capsule">capsule</option>
                                                            <option value="ml">ml</option>
                                                            <option value="mg">mg</option>
                                                            <option value="dose">dose</option>
                                                            <option value="drop">drop</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Row 3: Administration Route and Frequency -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Administration Route <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="route[]" id="route" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required>
                                                            <option value="">Select</option>
                                                            <option value="Oral">Oral</option>
                                                            <option value="IV">IV (Intravenous)</option>
                                                            <option value="IM">IM (Intramuscular)</option>
                                                            <option value="SC">SC (Subcutaneous)</option>
                                                            <option value="Topical">Topical</option>
                                                            <option value="Inhalation">Inhalation</option>
                                                            <option value="Rectal">Rectal</option>
                                                            <option value="Sublingual">Sublingual</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Frequency <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="frequency[]" id="frequency" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required>
                                                            <option value="">Select</option>
                                                            <option value="Once daily">Once daily</option>
                                                            <option value="Twice daily">Twice daily</option>
                                                            <option value="Three times daily">Three times daily</option>
                                                            <option value="Four times daily">Four times daily</option>
                                                            <option value="Every 6 hours">Every 6 hours</option>
                                                            <option value="Every 8 hours">Every 8 hours</option>
                                                            <option value="Every 12 hours">Every 12 hours</option>
                                                            <option value="As needed">As needed</option>
                                                            <option value="Before meals">Before meals</option>
                                                            <option value="After meals">After meals</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Row 4: Duration and Duration Unit -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Duration <span class="text-danger">*</span>
                                                        </label>
                                                        <input type="number" name="duration[]" id="duration" class="form-control" 
                                                               placeholder="e.g., 7" min="1" style="height: 45px; font-size: 14px;" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Duration unit <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="duration_unit[]" id="duration_unit" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required>
                                                            <option value="">Select</option>
                                                            <option value="days">days</option>
                                                            <option value="weeks">weeks</option>
                                                            <option value="months">months</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Instruction -->
                                            <div class="form-group" style="margin-bottom: 20px;">
                                                <label style="font-weight: bold; color: #333;">Instruction</label>
                                                <textarea name="instructions" id="instructions" class="form-control" rows="4" 
                                                          placeholder="Additional instructions for the patient" style="font-size: 14px;"></textarea>
                                            </div>

                                            <!-- Action Buttons -->
                                            <div class="row">
                                                <div class="col-md-12 text-right">
                                                    <button type="button" class="btn btn-default btn-lg" onclick="addToPrescriptionList()" style="margin-right: 10px;">
                                                        <i class="fa fa-plus"></i> Add to List
                                                    </button>
                                                    <button type="button" class="btn btn-success btn-lg" onclick="submitPrescription()">
                                                        <i class="fa fa-check"></i> Save Prescription
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-lg" onclick="hidePrescribeForm()" style="margin-left: 10px;">
                                                        <i class="fa fa-times"></i> Cancel
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <!-- Prescription History -->
                                <?php if (isset($prescriptions) && !empty($prescriptions)): ?>
                                <div class="panel panel-default" style="margin-top: 30px;">
                                    <div class="panel-heading">
                                        <h4>Prescription History</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Prescription #</th>
                                                        <th>Medicines</th>
                                                        <th>Status</th>
                                                        <th>Doctor</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($prescriptions as $prescription): ?>
                                                    <tr>
                                                        <td><?php echo date('M d, Y', strtotime($prescription->prescription_date)); ?></td>
                                                        <td><?php echo $prescription->prescription_number; ?></td>
                                                        <td>
                                                            <?php 
                                                            $medicines = json_decode($prescription->medicines, true);
                                                            if ($medicines) {
                                                                echo count($medicines) . ' medicine(s)';
                                                            } else {
                                                                echo 'N/A';
                                                            }
                                                            ?>
                                                        </td>
                                                        <td>
                                                            <span class="label label-<?php 
                                                                echo $prescription->status == 'Dispensed' ? 'success' : 'warning'; 
                                                            ?>">
                                                                <?php echo $prescription->status; ?>
                                                            </span>
                                                        </td>
                                                        <td><?php echo $prescription->doctor_name; ?></td>
                                                        <td>
                                                            <a href="<?php echo base_url('prescriptions/view/'.$prescription->prescription_id); ?>" 
                                                               class="btn btn-xs btn-info">
                                                                <i class="fa fa-eye"></i> View
                                                            </a>
                                                            <a href="<?php echo base_url('prescriptions/print/'.$prescription->prescription_id); ?>" 
                                                               class="btn btn-xs btn-primary" target="_blank">
                                                                <i class="fa fa-print"></i> Print
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- ADMISSION Tab -->
                            <div role="tabpanel" class="tab-pane" id="admission">
                                <div class="row" style="margin-bottom: 20px;">
                                    <div class="col-md-6">
                                        <h3 style="color: #1a237e; margin: 0;">
                                            <i class="fa fa-bed"></i> Patient Admission
                                        </h3>
                                        <small class="text-muted">Admit patient to ward</small>
                                    </div>
                                    <div class="col-md-6 text-right">
                                        <button type="button" class="btn btn-primary btn-lg" onclick="submitAdmission()" id="admitBtn">
                                            <i class="fa fa-check"></i> Admit
                                        </button>
                                    </div>
                                </div>

                                <!-- Admission Form -->
                                <div class="panel panel-default">
                                    <div class="panel-body" style="padding: 30px;">
                                        <form id="admissionForm" method="post" action="<?php echo base_url('patients/admit'); ?>">
                                            <input type="hidden" name="patient_id" value="<?php echo $patient->patient_id; ?>">
                                            <input type="hidden" name="doctor_id" value="<?php echo $this->session->userdata('user_id'); ?>">
                                            
                                            <!-- Row 1: Admission Type and Ward -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Admission Type <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="admission_type" id="admission_type" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required>
                                                            <option value="Ward Admission">Ward Admission</option>
                                                            <option value="ICU Admission">ICU Admission</option>
                                                            <option value="Emergency Admission">Emergency Admission</option>
                                                            <option value="Observation">Observation</option>
                                                            <option value="Day Care">Day Care</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Ward <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="ward_id" id="ward_id" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required onchange="updateWardInfo()">
                                                            <option value="">Select Ward</option>
                                                            <option value="1" data-beds="10" data-available="10">First Floor <span style="color: green;">●</span> (free bed - 10)</option>
                                                            <option value="2" data-beds="8" data-available="5">Second Floor <span style="color: green;">●</span> (free bed - 5)</option>
                                                            <option value="3" data-beds="12" data-available="8">Third Floor <span style="color: green;">●</span> (free bed - 8)</option>
                                                            <option value="4" data-beds="6" data-available="2">ICU <span style="color: orange;">●</span> (free bed - 2)</option>
                                                            <option value="5" data-beds="4" data-available="0">Emergency <span style="color: red;">●</span> (free bed - 0)</option>
                                                        </select>
                                                        <small id="wardInfo" class="text-muted" style="display: none;"></small>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Row 2: Diagnosis and Urgency -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Diagnosis <span class="text-danger">*</span>
                                                        </label>
                                                        <input type="text" name="diagnosis" id="diagnosis" class="form-control" 
                                                               placeholder="Enter diagnosis" style="height: 45px; font-size: 14px;" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">
                                                            Urgency <span class="text-danger">*</span>
                                                        </label>
                                                        <select name="urgency" id="urgency" class="form-control" 
                                                                style="height: 45px; font-size: 14px;" required>
                                                            <option value="Queue">Queue <span style="color: green;">●</span></option>
                                                            <option value="Normal">Normal</option>
                                                            <option value="Urgent">Urgent</option>
                                                            <option value="Emergency">Emergency</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Row 3: Advice -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">Advice</label>
                                                        <textarea name="advice" id="advice" class="form-control" rows="4" 
                                                                  placeholder="Enter medical advice or instructions" style="font-size: 14px;"></textarea>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Row 4: Description -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333;">Description</label>
                                                        <textarea name="description" id="description" class="form-control" rows="4" 
                                                                  placeholder="Enter detailed description" style="font-size: 14px;"></textarea>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Order Sheet (Procedures) -->
                                            <div class="row" style="margin-bottom: 20px;">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label style="font-weight: bold; color: #333; margin-bottom: 10px; display: block;">
                                                            Order sheet (Procedures)
                                                        </label>
                                                        <!-- Simple Rich Text Editor Toolbar -->
                                                        <div class="editor-toolbar" style="border: 1px solid #ddd; border-bottom: none; padding: 5px; background: #f5f5f5; border-radius: 4px 4px 0 0;">
                                                            <button type="button" class="btn btn-xs btn-default" onclick="formatText('bold')" title="Bold">
                                                                <i class="fa fa-bold"></i>
                                                            </button>
                                                            <button type="button" class="btn btn-xs btn-default" onclick="formatText('italic')" title="Italic">
                                                                <i class="fa fa-italic"></i>
                                                            </button>
                                                            <button type="button" class="btn btn-xs btn-default" onclick="formatText('underline')" title="Underline">
                                                                <i class="fa fa-underline"></i>
                                                            </button>
                                                            <span style="margin: 0 5px; color: #ccc;">|</span>
                                                            <button type="button" class="btn btn-xs btn-default" onclick="formatText('insertUnorderedList')" title="Bullet List">
                                                                <i class="fa fa-list-ul"></i>
                                                            </button>
                                                            <button type="button" class="btn btn-xs btn-default" onclick="formatText('insertOrderedList')" title="Numbered List">
                                                                <i class="fa fa-list-ol"></i>
                                                            </button>
                                                            <span style="margin: 0 5px; color: #ccc;">|</span>
                                                            <button type="button" class="btn btn-xs btn-default" onclick="clearEditor()" title="Clear">
                                                                <i class="fa fa-eraser"></i> Clear
                                                            </button>
                                                        </div>
                                                        <div id="orderSheetEditor" contenteditable="true" style="min-height: 200px; border: 1px solid #ddd; padding: 15px; background: #fff; border-radius: 0 0 4px 4px;">
                                                            <p>N/A</p>
                                                        </div>
                                                        <textarea name="order_sheet" id="order_sheet" style="display: none;"></textarea>
                                                        <small class="text-muted">Click in the editor above to enter procedure orders</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <!-- Admission History -->
                                <?php 
                                // Get admission records for this patient
                                $admissions = array();
                                try {
                                    if ($this->db->table_exists('admissions')) {
                                        $this->db->select('a.*, w.ward_name, CONCAT(u.first_name, " ", u.last_name) as doctor_name');
                                        $this->db->from('admissions a');
                                        $this->db->join('wards w', 'w.ward_id = a.ward_id', 'left');
                                        $this->db->join('users u', 'u.user_id = a.doctor_id', 'left');
                                        $this->db->where('a.patient_id', $patient->patient_id);
                                        $this->db->order_by('a.admission_date', 'DESC');
                                        $admissions = $this->db->get()->result();
                                    }
                                } catch (Exception $e) {
                                    $admissions = array();
                                }
                                ?>
                                
                                <?php if (!empty($admissions)): ?>
                                <div class="panel panel-default" style="margin-top: 30px;">
                                    <div class="panel-heading">
                                        <h4>Admission History</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Admission Date</th>
                                                        <th>Admission Type</th>
                                                        <th>Ward</th>
                                                        <th>Diagnosis</th>
                                                        <th>Urgency</th>
                                                        <th>Status</th>
                                                        <th>Doctor</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($admissions as $adm): ?>
                                                    <tr>
                                                        <td><?php echo date('M d, Y h:i A', strtotime($adm->admission_date)); ?></td>
                                                        <td><?php echo $adm->admission_type; ?></td>
                                                        <td><?php echo $adm->ward_name ? $adm->ward_name : 'N/A'; ?></td>
                                                        <td><?php echo $adm->diagnosis; ?></td>
                                                        <td>
                                                            <span class="label label-<?php 
                                                                echo $adm->urgency == 'Emergency' ? 'danger' : 
                                                                    ($adm->urgency == 'Urgent' ? 'warning' : 'info'); 
                                                            ?>">
                                                                <?php echo $adm->urgency; ?>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="label label-<?php 
                                                                echo $adm->status == 'Discharged' ? 'success' : 
                                                                    ($adm->status == 'Active' ? 'primary' : 'default'); 
                                                            ?>">
                                                                <?php echo $adm->status; ?>
                                                            </span>
                                                        </td>
                                                        <td><?php echo $adm->doctor_name; ?></td>
                                                        <td>
                                                            <a href="#" class="btn btn-xs btn-info" onclick="viewAdmission(<?php echo $adm->admission_id; ?>)">
                                                                <i class="fa fa-eye"></i> View
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php endforeach; ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <?php endif; ?>
                            </div>

                            <!-- PRINT Tab -->
                            <div role="tabpanel" class="tab-pane" id="print">
                                <h3 style="color: #1a237e; margin-bottom: 20px;">
                                    <i class="fa fa-print"></i> Print Options
                                </h3>
                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4>Print Documents</h4>
                                            </div>
                                            <div class="panel-body">
                                                <div class="list-group">
                                                    <a href="<?php echo base_url('patients/print-card/'.$patient->patient_id); ?>" 
                                                       target="_blank" 
                                                       class="list-group-item">
                                                        <i class="fa fa-id-card"></i> Patient Card
                                                    </a>
                                                    <?php if (isset($prescriptions) && !empty($prescriptions)): ?>
                                                    <?php foreach ($prescriptions as $prescription): ?>
                                                    <a href="<?php echo base_url('prescriptions/print/'.$prescription->prescription_id); ?>" 
                                                       target="_blank" 
                                                       class="list-group-item">
                                                        <i class="fa fa-file-text-o"></i> Prescription #<?php echo $prescription->prescription_number; ?>
                                                    </a>
                                                    <?php endforeach; ?>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4>Quick Actions</h4>
                                            </div>
                                            <div class="panel-body">
                                                <a href="<?php echo base_url('patients'); ?>" class="btn btn-default btn-block">
                                                    <i class="fa fa-arrow-left"></i> Back to Patient List
                                                </a>
                                                <a href="<?php echo base_url('patients/edit/'.$patient->patient_id); ?>" class="btn btn-primary btn-block">
                                                    <i class="fa fa-edit"></i> Edit Patient
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script>
$(document).ready(function() {
    // Ensure tabs are functional
    $('#visitTabs a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    });
    
    // Handle URL hash for direct tab access
    var hash = window.location.hash;
    if (hash) {
        $('#visitTabs a[href="' + hash + '"]').tab('show');
    }
    
    // Update URL hash when tab changes
    $('#visitTabs a').on('shown.bs.tab', function (e) {
        window.location.hash = e.target.hash;
    });
    
    // Smooth scroll for tab container
    $('.visit-tabs-container').on('wheel', function(e) {
        if (e.originalEvent.deltaY !== 0) {
            e.preventDefault();
            this.scrollLeft += e.originalEvent.deltaY;
        }
    });
    
    // Smooth scroll for lab category tabs
    $('.lab-category-container').on('wheel', function(e) {
        if (e.originalEvent.deltaY !== 0) {
            e.preventDefault();
            this.scrollLeft += e.originalEvent.deltaY;
        }
    });
    
    // Initialize total amount
    updateTotal();
});

// Update total amount based on selected tests
function updateTotal() {
    var total = 0;
    $('.test-checkbox:checked').each(function() {
        var price = parseFloat($(this).data('price')) || 0;
        total += price;
    });
    $('#totalAmount').text(total.toFixed(2));
}

// Toggle all tests in a group
function toggleGroup(groupName, checked) {
    $('#' + groupName + '-tests input[type="checkbox"]').prop('checked', checked);
    updateTotal();
}

// Show total in alert
function showTotal() {
    var total = parseFloat($('#totalAmount').text()) || 0;
    alert('Total Amount: ' + total.toFixed(2) + ' ETB');
}

// Create lab order
function createLabOrder() {
    var selectedTests = [];
    var total = 0;
    
    $('.test-checkbox:checked').each(function() {
        var testId = $(this).data('test-id');
        var testName = $(this).data('test');
        var testCategory = $(this).data('category') || 'Laboratory';
        var price = parseFloat($(this).data('price')) || 0;
        selectedTests.push({
            test_id: testId,
            test_name: testName,
            test_category: testCategory,
            price: price
        });
        total += price;
    });
    
    if (selectedTests.length === 0) {
        alert('Please select at least one test.');
        return;
    }
    
    var priority = $('#queueSelect').val() || 'Normal';
    if (priority === 'normal') priority = 'Normal';
    if (priority === 'urgent') priority = 'Urgent';
    if (priority === 'stat') priority = 'STAT';
    
    // Confirm order
    if (confirm('Create lab order for ' + selectedTests.length + ' test(s)?\nTotal: ' + total.toFixed(2) + ' ETB')) {
        // Create form and submit
        var form = $('<form>', {
            'method': 'POST',
            'action': '<?php echo base_url("lab/orders/create"); ?>'
        });
        
        form.append($('<input>', {
            'type': 'hidden',
            'name': 'patient_id',
            'value': '<?php echo $patient->patient_id; ?>'
        }));
        
        form.append($('<input>', {
            'type': 'hidden',
            'name': 'priority',
            'value': priority
        }));
        
        selectedTests.forEach(function(test, index) {
            form.append($('<input>', {
                'type': 'hidden',
                'name': 'test_id[]',
                'value': test.test_id
            }));
            form.append($('<input>', {
                'type': 'hidden',
                'name': 'test_name[]',
                'value': test.test_name
            }));
            form.append($('<input>', {
                'type': 'hidden',
                'name': 'test_category[]',
                'value': test.test_category
            }));
        });
        
        $('body').append(form);
        form.submit();
    }
}
</script>

<!-- New Procedure Modal -->
<div class="modal fade" id="newProcedureModal" tabindex="-1" role="dialog" aria-labelledby="newProcedureModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background: #1a237e; color: white;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color: white; opacity: 0.8;">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="newProcedureModalLabel">
                    <i class="fa fa-medkit"></i> NEW PROCEDURE
                </h4>
            </div>
            <form id="procedureForm" method="post" action="<?php echo base_url('patients/add_procedure'); ?>">
                <div class="modal-body" style="padding: 30px;">
                    <input type="hidden" name="patient_id" value="<?php echo $patient->patient_id; ?>">
                    <input type="hidden" name="doctor_id" value="<?php echo $this->session->userdata('user_id'); ?>">
                    
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="urgency" style="font-weight: bold; color: #333;">URGENCY <span class="text-danger">*</span></label>
                                <select name="urgency" id="urgency" class="form-control" required style="height: 45px; font-size: 14px;">
                                    <option value="Elective">Elective</option>
                                    <option value="Urgent">Urgent</option>
                                    <option value="Emergency">Emergency</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="procedure_date" style="font-weight: bold; color: #333;">PROCEDURE DATE <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <input type="text" name="procedure_date" id="procedure_date" class="form-control datepicker" 
                                           value="<?php echo date('m/d/Y'); ?>" required style="height: 45px; font-size: 14px;">
                                    <span class="input-group-addon" style="height: 45px; line-height: 33px;">
                                        <i class="fa fa-calendar"></i>
                                    </span>
                                    <span class="input-group-addon" style="height: 45px; line-height: 33px; cursor: pointer;" onclick="clearDate()">
                                        <i class="fa fa-times"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="procedure_time" style="font-weight: bold; color: #333;">PROCEDURE TIME <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <input type="time" name="procedure_time" id="procedure_time" class="form-control" 
                                           value="<?php echo date('H:i'); ?>" required style="height: 45px; font-size: 14px;">
                                    <span class="input-group-addon" style="height: 45px; line-height: 33px;">
                                        <i class="fa fa-clock-o"></i>
                                    </span>
                                    <span class="input-group-addon" style="height: 45px; line-height: 33px; cursor: pointer;" onclick="clearTime()">
                                        <i class="fa fa-times"></i>
                                    </span>
                                </div>
                                <small class="text-muted">Format: HH:MM (24-hour format)</small>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="procedure_category" style="font-weight: bold; color: #333;">PROCEDURE CATEGORY <span class="text-danger">*</span></label>
                                <select name="procedure_category" id="procedure_category" class="form-control" required style="height: 45px; font-size: 14px;">
                                    <option value="">Select</option>
                                    <option value="Surgery">Surgery</option>
                                    <option value="Minor Procedure">Minor Procedure</option>
                                    <option value="Diagnostic">Diagnostic</option>
                                    <option value="Therapeutic">Therapeutic</option>
                                    <option value="Cosmetic">Cosmetic</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="procedure_name" style="font-weight: bold; color: #333;">PROCEDURE NAME <span class="text-danger">*</span></label>
                                <input type="text" name="procedure_name" id="procedure_name" class="form-control" 
                                       placeholder="Enter procedure name" required style="height: 45px; font-size: 14px;">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="anesthesia" style="font-weight: bold; color: #333;">ANESTHESIA</label>
                                <select name="anesthesia" id="anesthesia" class="form-control" style="height: 45px; font-size: 14px;">
                                    <option value="">Select</option>
                                    <option value="General">General</option>
                                    <option value="Regional">Regional</option>
                                    <option value="Local">Local</option>
                                    <option value="Sedation">Sedation</option>
                                    <option value="None">None</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="anesthesia_cost" style="font-weight: bold; color: #333;">ANESTHESIA COST (ETB)</label>
                                <input type="number" name="anesthesia_cost" id="anesthesia_cost" class="form-control" 
                                       value="0" min="0" step="0.01" style="height: 45px; font-size: 14px;">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="procedure_cost" style="font-weight: bold; color: #333;">PROCEDURE COST (ETB)</label>
                                <input type="number" name="procedure_cost" id="procedure_cost" class="form-control" 
                                       value="0" min="0" step="0.01" style="height: 45px; font-size: 14px;">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="notes" style="font-weight: bold; color: #333;">NOTES</label>
                        <textarea name="notes" id="notes" class="form-control" rows="3" 
                                  placeholder="Additional notes or instructions" style="font-size: 14px;"></textarea>
                    </div>
                </div>
                <div class="modal-footer" style="padding: 15px 30px; border-top: 1px solid #e5e5e5;">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="padding: 10px 20px;">
                        <i class="fa fa-times"></i> Cancel
                    </button>
                    <button type="submit" class="btn btn-primary" style="padding: 10px 20px; background: #1a237e; border-color: #1a237e;">
                        <i class="fa fa-check"></i> Add Procedure
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
// Date picker initialization
$(document).ready(function() {
    // Initialize datepicker - using jQuery UI datepicker that's already loaded
    $('#procedure_date').datepicker({
        dateFormat: 'mm/dd/yy',
        changeMonth: true,
        changeYear: true,
        showButtonPanel: false
    });
});

function clearDate() {
    $('#procedure_date').val('');
}

function clearTime() {
    $('#procedure_time').val('');
}

function viewProcedure(procedureId) {
    // Redirect to procedure view page
    window.location.href = '<?php echo base_url("procedures/view/"); ?>' + procedureId;
}

// Prescription Functions
var prescriptionList = [];

function showPrescribeForm() {
    $('#prescribeDrugsForm').slideDown();
    $('#prescribedDrugsTable').slideDown();
    resetPrescriptionForm();
}

function hidePrescribeForm() {
    $('#prescribeDrugsForm').slideUp();
    prescriptionList = [];
    updatePrescriptionTable();
}

function resetPrescriptionForm() {
    $('#prescriptionForm')[0].reset();
    $('#product_id').val('').trigger('change');
}

function searchDrug() {
    var searchTerm = $('#drug_search').val().toLowerCase();
    $('#product_id option').each(function() {
        var text = $(this).text().toLowerCase();
        if (text.indexOf(searchTerm) > -1) {
            $(this).show();
        } else {
            $(this).hide();
        }
    });
    $('#product_id').focus();
}

// Update brand when drug is selected
$('#product_id').on('change', function() {
    var selectedOption = $(this).find('option:selected');
    var brand = selectedOption.data('brand') || '';
    var type = selectedOption.data('type') || '';
    
    $('#brand').val(brand);
    if (type) {
        $('#medicine_type').val(type);
    }
});

function addToPrescriptionList() {
    // Validate required fields
    if (!$('#product_id').val()) {
        alert('Please select a drug');
        return;
    }
    if (!$('#dose').val() || !$('#dose_unit').val()) {
        alert('Please enter dose and dose unit');
        return;
    }
    if (!$('#frequency').val()) {
        alert('Please select frequency');
        return;
    }
    if (!$('#duration').val() || !$('#duration_unit').val()) {
        alert('Please enter duration and duration unit');
        return;
    }
    
    var drug = {
        product_id: $('#product_id').val(),
        drug_name: $('#product_id option:selected').text(),
        brand: $('#brand').val(),
        medicine_type: $('#medicine_type').val(),
        strength: $('#strength').val(),
        str_unit: $('#str_unit').val(),
        dose: $('#dose').val(),
        dose_unit: $('#dose_unit').val(),
        route: $('#route').val(),
        frequency: $('#frequency').val(),
        duration: $('#duration').val(),
        duration_unit: $('#duration_unit').val()
    };
    
    prescriptionList.push(drug);
    updatePrescriptionTable();
    resetPrescriptionForm();
}

function updatePrescriptionTable() {
    var tbody = $('#prescribedDrugsList tbody');
    tbody.empty();
    
    if (prescriptionList.length === 0) {
        tbody.append('<tr><td colspan="9" class="text-center text-muted">No data</td></tr>');
        return;
    }
    
    prescriptionList.forEach(function(drug, index) {
        var row = '<tr>' +
            '<td>' + drug.drug_name + '</td>' +
            '<td>' + (drug.brand || '-') + '</td>' +
            '<td>' + drug.dose + ' ' + drug.dose_unit + '</td>' +
            '<td>' + (drug.strength ? drug.strength + ' ' + drug.str_unit : '-') + '</td>' +
            '<td>' + drug.medicine_type + '</td>' +
            '<td>' + drug.frequency + '</td>' +
            '<td>' + drug.duration + ' ' + drug.duration_unit + '</td>' +
            '<td>-</td>' +
            '<td><button type="button" class="btn btn-xs btn-danger" onclick="removeFromPrescriptionList(' + index + ')"><i class="fa fa-times"></i></button></td>' +
            '</tr>';
        tbody.append(row);
    });
}

function removeFromPrescriptionList(index) {
    prescriptionList.splice(index, 1);
    updatePrescriptionTable();
}

function submitPrescription() {
    if (prescriptionList.length === 0) {
        alert('Please add at least one drug to the prescription');
        return;
    }
    
    // Create hidden inputs for each drug
    var form = $('#prescriptionForm');
    
    // Remove old hidden inputs
    form.find('input[name^="medicine_name"]').remove();
    form.find('input[name^="dosage"]').remove();
    form.find('input[name^="frequency"]').remove();
    form.find('input[name^="duration"]').remove();
    form.find('input[name^="product_id"]').not('#product_id').remove();
    
    // Add new hidden inputs
    prescriptionList.forEach(function(drug) {
        form.append('<input type="hidden" name="product_id[]" value="' + drug.product_id + '">');
        form.append('<input type="hidden" name="medicine_name[]" value="' + drug.drug_name + '">');
        form.append('<input type="hidden" name="dosage[]" value="' + drug.dose + ' ' + drug.dose_unit + '">');
        form.append('<input type="hidden" name="frequency[]" value="' + drug.frequency + '">');
        form.append('<input type="hidden" name="duration[]" value="' + drug.duration + ' ' + drug.duration_unit + '">');
    });
    
    // Submit form
    form.submit();
}

// Admission Functions
function updateWardInfo() {
    var selected = $('#ward_id option:selected');
    var available = selected.data('available');
    var beds = selected.data('beds');
    
    if (available !== undefined && beds !== undefined) {
        $('#wardInfo').text('Available beds: ' + available + ' / ' + beds).show();
        
        if (available === 0) {
            $('#wardInfo').removeClass('text-muted').addClass('text-danger');
            $('#admitBtn').prop('disabled', true).text('No Beds Available');
        } else {
            $('#wardInfo').removeClass('text-danger').addClass('text-muted');
            $('#admitBtn').prop('disabled', false).html('<i class="fa fa-check"></i> Admit');
        }
    } else {
        $('#wardInfo').hide();
        $('#admitBtn').prop('disabled', false);
    }
}

function submitAdmission() {
    // Validate required fields
    if (!$('#admission_type').val()) {
        alert('Please select admission type');
        return;
    }
    if (!$('#ward_id').val()) {
        alert('Please select a ward');
        return;
    }
    if (!$('#diagnosis').val().trim()) {
        alert('Please enter diagnosis');
        $('#diagnosis').focus();
        return;
    }
    if (!$('#urgency').val()) {
        alert('Please select urgency');
        return;
    }
    
    // Get order sheet content
    var orderSheetContent = $('#orderSheetEditor').html();
    if (orderSheetContent === '<p>N/A</p>' || orderSheetContent.trim() === '') {
        orderSheetContent = '';
    }
    $('#order_sheet').val(orderSheetContent);
    
    // Confirm admission
    if (confirm('Admit patient to selected ward?')) {
        $('#admitBtn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Admitting...');
        $('#admissionForm').submit();
    }
}

function viewAdmission(admissionId) {
    // Redirect to admission view page
    window.location.href = '<?php echo base_url("admissions/view/"); ?>' + admissionId;
}

// Initialize order sheet editor (simple contenteditable)
$(document).ready(function() {
    $('#orderSheetEditor').on('focus', function() {
        if ($(this).html() === '<p>N/A</p>' || $(this).html().trim() === '') {
            $(this).html('');
        }
    });
    
    $('#orderSheetEditor').on('blur', function() {
        if ($(this).html().trim() === '' || $(this).text().trim() === '') {
            $(this).html('<p>N/A</p>');
        }
    });
});

// Rich text editor formatting functions
function formatText(command, value = null) {
    document.execCommand(command, false, value);
    $('#orderSheetEditor').focus();
}

function clearEditor() {
    if (confirm('Clear all content?')) {
        $('#orderSheetEditor').html('<p>N/A</p>');
    }
}

// Payment Functions
function copyPatientId() {
    var patientId = '<?php echo $patient->patient_code; ?>';
    var textarea = document.createElement('textarea');
    textarea.value = patientId;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand('copy');
    document.body.removeChild(textarea);
    
    // Show notification
    alert('Copied: ' + patientId);
}

function addServiceRow() {
    var serviceName = $('#service_name').val();
    var serviceAmount = parseFloat($('#service_amount').val()) || 0;
    
    if (!serviceName || serviceAmount <= 0) {
        alert('Please enter service name and amount');
        return;
    }
    
    var serviceList = $('#serviceList');
    var totalAmount = parseFloat($('#totalAmount').text().replace(' ETB', '')) || 0;
    
    // Add service row
    var row = '<tr class="service-row">' +
        '<td>' + serviceName + '</td>' +
        '<td class="text-right">' + serviceAmount.toFixed(2) + ' ETB</td>' +
        '<td class="text-center">' +
        '<button type="button" class="btn btn-xs btn-danger" onclick="removeServiceRow(this)">' +
        '<i class="fa fa-times"></i></button>' +
        '</td>' +
        '<input type="hidden" name="services[]" value="' + serviceName + '">' +
        '<input type="hidden" name="amounts[]" value="' + serviceAmount + '">' +
        '</tr>';
    
    serviceList.append(row);
    
    // Update total
    totalAmount += serviceAmount;
    $('#totalAmount').text(totalAmount.toFixed(2));
    $('#payment_total_amount').val(totalAmount.toFixed(2));
    
    // Clear inputs
    $('#service_name').val('');
    $('#service_amount').val('');
}

function removeServiceRow(btn) {
    var row = $(btn).closest('tr');
    var amount = parseFloat(row.find('input[name="amounts[]"]').val()) || 0;
    var totalAmount = parseFloat($('#totalAmount').text().replace(' ETB', '')) || 0;
    
    totalAmount -= amount;
    $('#totalAmount').text(totalAmount.toFixed(2));
    $('#payment_total_amount').val(totalAmount.toFixed(2));
    
    row.remove();
}

function submitPayment() {
    var totalAmount = parseFloat($('#payment_total_amount').val()) || 0;
    var paymentMethod = $('#payment_method').val();
    
    if (totalAmount <= 0) {
        alert('Please add at least one service');
        return;
    }
    
    if (!paymentMethod) {
        alert('Please select payment method');
        return;
    }
    
    if (confirm('Process payment of ' + totalAmount.toFixed(2) + ' ETB?')) {
        $('#paymentForm').submit();
    }
}

// Initialize payment modal
$('#paymentModal').on('show.bs.modal', function() {
    // Reset form
    $('#serviceList').empty();
    $('#totalAmount').text('0.00');
    $('#payment_total_amount').val('0');
    $('#service_name').val('');
    $('#service_amount').val('');
    $('#payment_method').val('');
});
</script>

<!-- Payment Modal -->
<div class="modal fade" id="paymentModal" tabindex="-1" role="dialog" aria-labelledby="paymentModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background: #1a237e; color: white; border-radius: 4px 4px 0 0;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color: white; opacity: 0.8;">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="paymentModalLabel" style="color: white;">
                    <i class="fa fa-money"></i> PAYMENT DETAIL
                </h4>
            </div>
            <form id="paymentForm" method="post" action="<?php echo base_url('patients/process_payment'); ?>">
                <input type="hidden" name="patient_id" value="<?php echo $patient->patient_id; ?>">
                <input type="hidden" name="total_amount" id="payment_total_amount" value="0">
                
                <div class="modal-body" style="padding: 0;">
                    <!-- DETAIL Section -->
                    <div style="background: #f5f5f5; padding: 15px; border-bottom: 1px solid #ddd;">
                        <h5 style="margin: 0; color: #1a237e; font-weight: bold;">DETAIL</h5>
                    </div>
                    <div style="padding: 20px;">
                        <div class="row" style="margin-bottom: 15px;">
                            <div class="col-md-6">
                                <label style="font-weight: bold; color: #333;">PATIENT NAME:</label>
                                <p style="margin: 5px 0; font-size: 16px;">
                                    <?php echo strtoupper($patient->first_name . ' ' . ($patient->middle_name ? $patient->middle_name . ' ' : '') . $patient->last_name); ?>
                                </p>
                            </div>
                            <div class="col-md-6">
                                <label style="font-weight: bold; color: #333;">TOTAL AMOUNT:</label>
                                <p style="margin: 5px 0; font-size: 18px; color: #1a237e; font-weight: bold;">
                                    <span id="totalAmount">0.00</span> ETB
                                </p>
                            </div>
                        </div>
                        <div class="row" style="margin-bottom: 15px;">
                            <div class="col-md-6">
                                <label style="font-weight: bold; color: #333;">PATIENT #ID (MRN):</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" value="<?php echo $patient->patient_code; ?>" readonly style="background: #f9f9f9;">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default" onclick="copyPatientId()" title="Copy MRN">
                                            <i class="fa fa-copy"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label style="font-weight: bold; color: #333;">PAYMENT STATUS:</label>
                                <div>
                                    <span class="label label-success" style="font-size: 14px; padding: 8px 15px;">PAID</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- SERVICES Section -->
                    <div style="background: #f5f5f5; padding: 15px; border-top: 1px solid #ddd; border-bottom: 1px solid #ddd;">
                        <h5 style="margin: 0; color: #1a237e; font-weight: bold;">SERVICES</h5>
                    </div>
                    <div style="padding: 20px;">
                        <!-- Add Service Form -->
                        <div class="row" style="margin-bottom: 20px;">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label style="font-weight: bold; color: #333;">Service Name:</label>
                                    <select id="service_name" class="form-control" style="height: 40px;">
                                        <option value="">Select Service</option>
                                        <option value="Patient Card">Patient Card</option>
                                        <option value="Consultation">Consultation</option>
                                        <option value="Follow-up">Follow-up</option>
                                        <option value="Emergency">Emergency</option>
                                        <option value="Lab Test">Lab Test</option>
                                        <option value="Procedure">Procedure</option>
                                        <option value="Medicine">Medicine</option>
                                        <option value="Admission">Admission</option>
                                        <option value="Other">Other</option>
                                    </select>
                                    <input type="text" id="service_name_custom" class="form-control" placeholder="Or enter custom service" 
                                           style="margin-top: 5px; height: 40px; display: none;">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label style="font-weight: bold; color: #333;">Amount (ETB):</label>
                                    <input type="number" id="service_amount" class="form-control" 
                                           placeholder="0.00" min="0" step="0.01" style="height: 40px;">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label style="color: transparent;">Add</label>
                                    <button type="button" class="btn btn-primary btn-block" onclick="addServiceRow()" style="height: 40px;">
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Services List -->
                        <div class="table-responsive">
                            <table class="table table-bordered" style="margin-bottom: 0;">
                                <thead style="background: #f5f5f5;">
                                    <tr>
                                        <th style="font-weight: bold; color: #333;">SERVICE GIVEN</th>
                                        <th class="text-right" style="font-weight: bold; color: #333;">AMOUNT</th>
                                        <th class="text-center" style="font-weight: bold; color: #333;">ACTION</th>
                                    </tr>
                                </thead>
                                <tbody id="serviceList">
                                    <tr>
                                        <td colspan="3" class="text-center text-muted" style="padding: 20px;">
                                            No services added yet. Add services above.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        
                        <!-- Payment Method -->
                        <div class="row" style="margin-top: 20px;">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label style="font-weight: bold; color: #333;">Payment Method <span class="text-danger">*</span>:</label>
                                    <select name="payment_method" id="payment_method" class="form-control" required style="height: 45px;">
                                        <option value="">Select Payment Method</option>
                                        <option value="Cash">Cash</option>
                                        <option value="Card">Card</option>
                                        <option value="Mobile Money">Mobile Money</option>
                                        <option value="Bank Transfer">Bank Transfer</option>
                                        <option value="Insurance">Insurance</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer" style="padding: 15px 20px; border-top: 1px solid #ddd;">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        <i class="fa fa-times"></i> Close
                    </button>
                    <button type="button" class="btn btn-success" onclick="submitPayment()">
                        <i class="fa fa-check"></i> Process Payment
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
// Handle custom service name
$('#service_name').on('change', function() {
    if ($(this).val() === 'Other') {
        $('#service_name_custom').show().focus();
    } else {
        $('#service_name_custom').hide().val('');
    }
});

$('#service_name_custom').on('input', function() {
    if ($(this).val()) {
        $('#service_name').val('Other');
    }
});
</script>

