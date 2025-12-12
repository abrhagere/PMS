<!-- New Lab Order -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-science"></i></div>
        <div class="header-title">
            <h1>New Lab Order</h1>
            <small>Create Laboratory Test Order</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="<?php echo base_url('lab/orders'); ?>">Lab Orders</a></li>
                <li class="active">New Order</li>
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

        <form method="post" action="<?php echo base_url('lab/create'); ?>" id="labOrderForm">
            <div class="row">
                <!-- Patient Selection -->
                <div class="col-md-12">
                    <div class="panel panel-bd">
                        <div class="panel-heading">
                            <h4><i class="fa fa-user"></i> Patient Information</h4>
                        </div>
                        <div class="panel-body">
                            <?php if (isset($patient) && $patient): ?>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Patient <span class="text-danger">*</span></label>
                                            <input type="hidden" name="patient_id" value="<?php echo $patient->patient_id; ?>">
                                            <input type="text" class="form-control" value="<?php echo $patient->patient_code . ' - ' . $patient->first_name . ' ' . $patient->last_name; ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <input type="text" class="form-control" value="<?php echo $patient->gender; ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Age</label>
                                            <input type="text" class="form-control" value="<?php 
                                                if ($patient->date_of_birth) {
                                                    $dob = new DateTime($patient->date_of_birth);
                                                    $now = new DateTime();
                                                    $age = $now->diff($dob);
                                                    echo $age->y . ' years';
                                                } else {
                                                    echo $patient->age_years . ' years';
                                                }
                                            ?>" readonly>
                                        </div>
                                    </div>
                                </div>
                            <?php else: ?>
                                <div class="form-group">
                                    <label>Search Patient <span class="text-danger">*</span></label>
                                    <select name="patient_id" id="patient_id" class="form-control select2" required style="width: 100%;">
                                        <option value="">Select Patient</option>
                                        <?php
                                        // Get patients list
                                        $this->db->select('patient_id, patient_code, first_name, last_name, phone');
                                        $this->db->from('patients');
                                        $this->db->order_by('first_name', 'ASC');
                                        $patients = $this->db->get()->result();
                                        foreach ($patients as $p):
                                        ?>
                                            <option value="<?php echo $p->patient_id; ?>">
                                                <?php echo $p->patient_code . ' - ' . $p->first_name . ' ' . $p->last_name . ' (' . $p->phone . ')'; ?>
                                            </option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            <?php endif; ?>
                            
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Priority <span class="text-danger">*</span></label>
                                        <select name="priority" id="priority" class="form-control" required>
                                            <option value="Normal">Normal</option>
                                            <option value="Urgent">Urgent</option>
                                            <option value="STAT">STAT</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Clinical Notes</label>
                                        <textarea name="clinical_notes" id="clinical_notes" class="form-control" rows="2" placeholder="Enter clinical notes or instructions for the lab"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Lab Tests Selection -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-bd">
                        <div class="panel-heading">
                            <h4><i class="fa fa-flask"></i> Select Laboratory Tests</h4>
                        </div>
                        <div class="panel-body">
                            <?php if (!empty($lab_tests)): 
                                // Group tests by category
                                $tests_by_category = array();
                                foreach ($lab_tests as $test) {
                                    $category = $test->test_category ? $test->test_category : 'Other';
                                    if (!isset($tests_by_category[$category])) {
                                        $tests_by_category[$category] = array();
                                    }
                                    $tests_by_category[$category][] = $test;
                                }
                                
                                // Default categories
                                $default_categories = array('Hematology', 'Serology', 'Clinical Chemistry', 'Biochemistry', 'Parasitology', 'Urine Chemical Analysis', 'Urine Microscopy', 'Hormones');
                                $all_categories = array_unique(array_merge($default_categories, array_keys($tests_by_category)));
                            ?>
                            
                            <!-- Category Tabs -->
                            <ul class="nav nav-tabs" role="tablist" style="margin-bottom: 20px;">
                                <?php $first = true; foreach ($all_categories as $category): 
                                    $tab_id = strtolower(str_replace(' ', '-', $category));
                                    $tests_in_category = isset($tests_by_category[$category]) ? $tests_by_category[$category] : array();
                                ?>
                                    <li role="presentation" class="<?php echo $first ? 'active' : ''; ?>">
                                        <a href="#<?php echo $tab_id; ?>" aria-controls="<?php echo $tab_id; ?>" role="tab" data-toggle="tab">
                                            <?php echo htmlspecialchars($category); ?>
                                            <?php if (!empty($tests_in_category)): ?>
                                                <span class="badge"><?php echo count($tests_in_category); ?></span>
                                            <?php endif; ?>
                                        </a>
                                    </li>
                                <?php $first = false; endforeach; ?>
                            </ul>

                            <!-- Test Categories Content -->
                            <div class="tab-content">
                                <?php $first = true; foreach ($all_categories as $category): 
                                    $tab_id = strtolower(str_replace(' ', '-', $category));
                                    $tests_in_category = isset($tests_by_category[$category]) ? $tests_by_category[$category] : array();
                                ?>
                                    <div role="tabpanel" class="tab-pane <?php echo $first ? 'active' : ''; ?>" id="<?php echo $tab_id; ?>">
                                        <?php if (!empty($tests_in_category)): ?>
                                            <div class="row">
                                                <?php foreach ($tests_in_category as $test): ?>
                                                    <div class="col-md-4" style="margin-bottom: 10px;">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" name="test_ids[]" value="<?php echo $test->test_id; ?>" 
                                                                       class="test-checkbox" 
                                                                       data-test-name="<?php echo htmlspecialchars($test->test_name); ?>"
                                                                       data-test-category="<?php echo htmlspecialchars($test->test_category); ?>"
                                                                       data-test-price="<?php echo isset($test->price) ? $test->price : 0; ?>">
                                                                <strong><?php echo htmlspecialchars($test->test_name); ?></strong>
                                                                <?php if (isset($test->price) && $test->price > 0): ?>
                                                                    <span class="text-muted"> - <?php echo number_format($test->price, 2); ?> ETB</span>
                                                                <?php endif; ?>
                                                            </label>
                                                        </div>
                                                    </div>
                                                <?php endforeach; ?>
                                            </div>
                                        <?php else: ?>
                                            <div class="alert alert-info">
                                                <i class="fa fa-info-circle"></i> No tests available in this category.
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                <?php $first = false; endforeach; ?>
                            </div>
                            
                            <?php else: ?>
                                <div class="alert alert-warning">
                                    <i class="fa fa-exclamation-triangle"></i> No lab tests are configured in the system. 
                                    <a href="<?php echo base_url('lab_tests/add'); ?>">Add lab tests</a> to create orders.
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-bd">
                        <div class="panel-body">
                            <div class="form-group">
                                <button type="submit" name="submit" value="1" class="btn btn-success btn-lg">
                                    <i class="fa fa-save"></i> Create Lab Order
                                </button>
                                <a href="<?php echo base_url('lab/orders'); ?>" class="btn btn-default btn-lg">
                                    <i class="fa fa-times"></i> Cancel
                                </a>
                                <span class="pull-right" style="margin-top: 10px;">
                                    <strong>Selected Tests: <span id="selectedCount">0</span></strong>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>

<script>
$(document).ready(function() {
    // Initialize Select2 for patient search
    if ($('#patient_id').length) {
        $('#patient_id').select2({
            placeholder: "Search patient by name, code, or phone",
            allowClear: true
        });
    }
    
    // Count selected tests
    function updateSelectedCount() {
        var count = $('.test-checkbox:checked').length;
        $('#selectedCount').text(count);
    }
    
    // Update count on checkbox change
    $('.test-checkbox').on('change', function() {
        updateSelectedCount();
    });
    
    // Form validation
    $('#labOrderForm').on('submit', function(e) {
        var patientId = $('input[name="patient_id"]').val() || $('#patient_id').val();
        var selectedTests = $('.test-checkbox:checked').length;
        
        if (!patientId) {
            alert('Please select a patient');
            e.preventDefault();
            return false;
        }
        
        if (selectedTests === 0) {
            alert('Please select at least one lab test');
            e.preventDefault();
            return false;
        }
    });
    
    // Initialize count
    updateSelectedCount();
});
</script>

