<!-- Lab Tests List -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-flask"></i>
        </div>
        <div class="header-title">
            <h1>Lab Tests Management</h1>
            <small>Manage Laboratory Tests</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li class="active">Lab Tests</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <?php if ($this->session->flashdata('message')): ?>
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $this->session->flashdata('message'); ?>
        </div>
        <?php endif; ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>
                                <i class="fa fa-flask"></i> Lab Tests
                                <a href="<?php echo base_url('lab_tests/add'); ?>" class="btn btn-success btn-sm pull-right">
                                    <i class="fa fa-plus"></i> Add New Test
                                </a>
                            </h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr class="info">
                                        <th>Test Code</th>
                                        <th>Test Name</th>
                                        <th>Category</th>
                                        <th>Normal Range</th>
                                        <th>Price</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if (!empty($tests)): ?>
                                        <?php foreach ($tests as $test): ?>
                                            <tr>
                                                <td><strong><?php echo $test->test_code ? $test->test_code : 'N/A'; ?></strong></td>
                                                <td><?php echo $test->test_name; ?></td>
                                                <td><?php echo $test->test_category ? $test->test_category : 'Uncategorized'; ?></td>
                                                <td><?php echo $test->normal_range ? $test->normal_range : '-'; ?></td>
                                                <td><?php echo $test->price ? number_format($test->price, 2) : '0.00'; ?></td>
                                                <td>
                                                    <?php if ($test->status == 1): ?>
                                                        <span class="label label-success">Active</span>
                                                    <?php else: ?>
                                                        <span class="label label-default">Inactive</span>
                                                    <?php endif; ?>
                                                </td>
                                                <td class="text-center">
                                                    <a href="<?php echo base_url('lab_tests/edit/'.$test->test_id); ?>" 
                                                       class="btn btn-xs btn-info" title="Edit">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                    <a href="<?php echo base_url('lab_tests/delete/'.$test->test_id); ?>" 
                                                       class="btn btn-xs btn-danger" title="Delete"
                                                       onclick="return confirm('Are you sure you want to delete this test?');">
                                                        <i class="fa fa-trash"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    <?php else: ?>
                                        <tr>
                                            <td colspan="7" class="text-center">
                                                <div style="padding: 30px;">
                                                    <i class="fa fa-flask fa-3x text-muted"></i><br><br>
                                                    <h4>No lab tests found</h4>
                                                    <p>
                                                        <a href="<?php echo base_url('lab_tests/add'); ?>" class="btn btn-sm btn-success">
                                                            <i class="fa fa-plus"></i> Add First Test
                                                        </a>
                                                    </p>
                                                </div>
                                            </td>
                                        </tr>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                        
                        <?php if (isset($pagination)): ?>
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


