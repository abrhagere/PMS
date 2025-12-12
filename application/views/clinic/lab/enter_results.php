<!-- Enter Lab Results -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-science"></i></div>
        <div class="header-title">
            <h1>Enter Lab Results</h1>
            <small><?php echo $order->order_number; ?></small>
        </div>
    </section>

    <section class="content">
        <form method="post" id="lab-results-form">
            <div class="row">
                <!-- Order Information -->
                <div class="col-md-12">
                    <div class="panel panel-bd">
                        <div class="panel-heading">
                            <h4>Order Information</h4>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-sm-3">
                                    <strong>Order #:</strong><br>
                                    <?php echo $order->order_number; ?>
                                </div>
                                <div class="col-sm-3">
                                    <strong>Patient:</strong><br>
                                    <?php echo $order->first_name . ' ' . $order->last_name; ?><br>
                                    <small class="text-muted"><?php echo $order->patient_code; ?></small>
                                </div>
                                <div class="col-sm-3">
                                    <strong>Doctor:</strong><br>
                                    Dr. <?php echo $order->doctor_name; ?>
                                </div>
                                <div class="col-sm-3">
                                    <strong>Priority:</strong><br>
                                    <span class="label label-<?php echo $order->priority == 'STAT' ? 'danger' : ($order->priority == 'Urgent' ? 'warning' : 'default'); ?>">
                                        <?php echo $order->priority; ?>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Test Results Entry -->
                <div class="col-md-12">
                    <div class="panel panel-bd">
                        <div class="panel-heading">
                            <h4>Test Results</h4>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th width="20%">Test Name</th>
                                            <th width="10%">Category</th>
                                            <th width="10%">Sample Type</th>
                                            <th width="15%">Result <span class="text-danger">*</span></th>
                                            <th width="10%">Unit</th>
                                            <th width="15%">Normal Range</th>
                                            <th width="20%">Remarks</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if (!empty($order->tests)): foreach ($order->tests as $test): ?>
                                        <tr>
                                            <td>
                                                <strong><?php echo $test->test_name; ?></strong>
                                                <input type="hidden" name="detail_id[]" value="<?php echo $test->detail_id; ?>">
                                            </td>
                                            <td><?php echo $test->test_category; ?></td>
                                            <td><?php echo $test->sample_type; ?></td>
                                            <td>
                                                <input type="text" 
                                                       name="result[]" 
                                                       class="form-control" 
                                                       value="<?php echo $test->result; ?>" 
                                                       placeholder="Enter result"
                                                       <?php echo !empty($test->result) ? '' : 'required'; ?>>
                                            </td>
                                            <td>
                                                <input type="text" 
                                                       name="unit[]" 
                                                       class="form-control" 
                                                       value="<?php echo $test->unit; ?>" 
                                                       placeholder="mg/dL">
                                            </td>
                                            <td>
                                                <input type="text" 
                                                       name="normal_range[]" 
                                                       class="form-control" 
                                                       value="<?php echo $test->normal_range; ?>" 
                                                       placeholder="0-100">
                                            </td>
                                            <td>
                                                <textarea name="remarks[]" 
                                                          class="form-control" 
                                                          rows="1" 
                                                          placeholder="Optional remarks"><?php echo $test->remarks; ?></textarea>
                                            </td>
                                        </tr>
                                        <?php endforeach; else: ?>
                                        <tr>
                                            <td colspan="7" class="text-center">No tests found for this order.</td>
                                        </tr>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>

                            <div class="form-group text-right" style="margin-top: 20px;">
                                <a href="<?php echo base_url('lab/orders'); ?>" class="btn btn-default">
                                    <i class="fa fa-times"></i> Cancel
                                </a>
                                <button type="submit" name="submit" value="1" class="btn btn-success">
                                    <i class="fa fa-save"></i> Save Results
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>

<style>
.table > tbody > tr > td {
    vertical-align: middle;
}
.table input.form-control,
.table textarea.form-control {
    font-size: 13px;
}
</style>









