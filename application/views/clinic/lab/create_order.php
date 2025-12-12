<!-- Create Lab Order -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-science"></i></div>
        <div class="header-title">
            <h1>Create Lab Order</h1>
        </div>
    </section>

    <section class="content">
        <form method="post">
            <div class="panel panel-bd">
                <div class="panel-body">
                    <div class="form-group">
                        <label>Patient <span class="text-danger">*</span></label>
                        <select name="patient_id" class="form-control" required>
                            <option value="">Select Patient</option>
                            <?php if (!empty($patients)): foreach ($patients as $p): ?>
                                <option value="<?php echo $p->patient_id; ?>"><?php echo $p->patient_code . ' - ' . $p->full_name; ?></option>
                            <?php endforeach; endif; ?>
                        </select>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Priority</label>
                                <select name="priority" class="form-control">
                                    <option value="Normal">Normal</option>
                                    <option value="Urgent">Urgent</option>
                                    <option value="STAT">STAT</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Clinical Notes</label>
                                <input type="text" name="clinical_notes" class="form-control">
                            </div>
                        </div>
                    </div>

                    <h4>Lab Tests</h4>
                    <div id="testList">
                        <div class="row test-row">
                            <div class="col-sm-4">
                                <input type="text" name="test_name[]" class="form-control" placeholder="Test Name" required>
                            </div>
                            <div class="col-sm-3">
                                <input type="text" name="test_category[]" class="form-control" placeholder="Category">
                            </div>
                            <div class="col-sm-3">
                                <input type="text" name="sample_type[]" class="form-control" placeholder="Sample Type">
                            </div>
                            <div class="col-sm-2">
                                <button type="button" class="btn btn-success" onclick="addTest()"><i class="fa fa-plus"></i></button>
                            </div>
                        </div>
                    </div>

                    <div style="margin-top: 20px;">
                        <button type="submit" name="submit" value="1" class="btn btn-success btn-lg">
                            <i class="fa fa-save"></i> Create Lab Order
                        </button>
                        <a href="<?php echo base_url('lab/orders'); ?>" class="btn btn-default btn-lg">Cancel</a>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>

<script>
function addTest() {
    var html = '<div class="row test-row" style="margin-top: 10px;">' +
        '<div class="col-sm-4"><input type="text" name="test_name[]" class="form-control" placeholder="Test Name"></div>' +
        '<div class="col-sm-3"><input type="text" name="test_category[]" class="form-control" placeholder="Category"></div>' +
        '<div class="col-sm-3"><input type="text" name="sample_type[]" class="form-control" placeholder="Sample Type"></div>' +
        '<div class="col-sm-2"><button type="button" class="btn btn-danger" onclick="$(this).closest(\'.test-row\').remove()"><i class="fa fa-minus"></i></button></div>' +
        '</div>';
    $('#testList').append(html);
}
</script>







