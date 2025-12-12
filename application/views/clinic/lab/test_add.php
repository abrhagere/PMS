<!-- Add Lab Test -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-flask"></i>
        </div>
        <div class="header-title">
            <h1>Add New Lab Test</h1>
            <small>Laboratory Test Management</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="<?php echo base_url('lab_tests'); ?>">Lab Tests</a></li>
                <li class="active">Add New Test</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <?php if (isset($error_message)): ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $error_message; ?>
        </div>
        <?php endif; ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Lab Test Information</h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <?php echo form_open('lab_tests/add', array('class' => 'form-vertical', 'id' => 'testForm')); ?>
                            
                            <div class="form-group row">
                                <label for="test_name" class="col-sm-3 col-form-label">Test Name <i class="text-danger">*</i></label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="test_name" id="test_name" 
                                           value="<?php echo set_value('test_name'); ?>" required>
                                    <?php echo form_error('test_name', '<div class="text-danger">', '</div>'); ?>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="test_code" class="col-sm-3 col-form-label">Test Code</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="test_code" id="test_code" 
                                           value="<?php echo set_value('test_code'); ?>" 
                                           placeholder="Auto-generated if left empty">
                                    <small class="text-muted">Leave empty to auto-generate</small>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="test_category" class="col-sm-3 col-form-label">Category</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="test_category" id="test_category" 
                                           value="<?php echo set_value('test_category'); ?>" 
                                           list="categories" placeholder="e.g., Hematology, Biochemistry">
                                    <datalist id="categories">
                                        <?php if (!empty($categories)): ?>
                                            <?php foreach ($categories as $cat): ?>
                                                <option value="<?php echo $cat->test_category; ?>">
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </datalist>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="description" class="col-sm-3 col-form-label">Description</label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" name="description" id="description" rows="3"><?php echo set_value('description'); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="normal_range" class="col-sm-3 col-form-label">Normal Range</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="normal_range" id="normal_range" 
                                           value="<?php echo set_value('normal_range'); ?>" 
                                           placeholder="e.g., 70-100 mg/dL">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="price" class="col-sm-3 col-form-label">Price</label>
                                <div class="col-sm-6">
                                    <input type="number" class="form-control" name="price" id="price" 
                                           value="<?php echo set_value('price'); ?>" step="0.01" min="0">
                                    <?php echo form_error('price', '<div class="text-danger">', '</div>'); ?>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-6 col-sm-offset-3">
                                    <button type="submit" name="submit" value="1" class="btn btn-success">
                                        <i class="fa fa-save"></i> Save Test
                                    </button>
                                    <a href="<?php echo base_url('lab_tests'); ?>" class="btn btn-default">
                                        <i class="fa fa-times"></i> Cancel
                                    </a>
                                </div>
                            </div>

                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>


