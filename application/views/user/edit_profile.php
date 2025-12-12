<!-- Edit Profile Page Start -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-user-female"></i></div>
        <div class="header-title">
            <h1><?php echo display('update_profile') ?></h1>
            <small><?php echo display('your_profile') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i><?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('profile') ?></a></li>
                <li class="active"><?php echo display('update_profile') ?></li>
            </ol>
        </div>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-sm-12 col-md-4">
            </div>
            <div class="col-sm-12 col-md-4">

            <!-- Alert Message -->
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
            <?php echo form_open_multipart('Admin_dashboard/update_profile',array('id' => 'validate','class' => 'form-horizontal'))?>
                <div class="card">
                    <div class="card-header">
                        <div class="card-header-menu">
                            <i class="fa fa-bars"></i>
                        </div>
                        <div class="card-header-headshot" style="background-image: url({logo});"></div>
                    </div>
                    <div class="card-content">
                        <div class="card-content-member">
                            <h4 class="m-t-0">{first_name} {last_name}</h4>
                        </div>
                        <div class="card-content-languages">
                            <div class="card-content-languages-group">
                                <div>
                                    <h4><?php echo display('first_name') ?>:</h4>
                                </div>
                                <div>
                                    <ul>
                                        <input type="text" placeholder="<?php echo display('first_name') ?>" class="form-control" id="first_name" name="first_name" value="{first_name}" required />
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content-languages-group">
                                <div>
                                    <h4><?php echo display('last_name') ?>:</h4>
                                </div>
                                <div>
                                    <ul>
                                        <li><input type="text" placeholder="<?php echo display('last_name') ?>" class="form-control" id="last_name" name="last_name" value="{last_name}" required  /></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content-languages-group">
                                <div>
                                    <h4><?php echo display('email') ?>:</h4>
                                </div>
                                <div>
                                    <ul>
                                        <li><input type="email" placeholder="<?php echo display('email') ?>" class="form-control" id="user_name" name="user_name" value="{user_name}" required /></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content-languages-group">
                                <div>
                                    <h4>Role:</h4>
                                </div>
                                <div>
                                    <ul>
                                        <li>
                                            <div id="roleDisplayContainer" style="padding: 8px 0;">
                                                <input type="text" class="form-control" value="{roles_display}" readonly style="background-color: #f5f5f5; cursor: not-allowed;" id="roleDisplayInput" />
                                            </div>
                                            <small class="text-muted" style="font-size: 12px; margin-top: 5px; display: block;">
                                                <i class="fa fa-info-circle"></i> Your role(s) are assigned by the administrator
                                            </small>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content-languages-group">
                                <div>
                                    <h4><?php echo display('image') ?>:</h4>
                                </div>
                                <div>
                                    <ul>
                                        <li><input type="file" id="logo" name="logo" value="{logo}" /></li>
                                        <input type="hidden" name="old_logo" value="{logo}" />
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="card-footer-stats">
                          <button type="submit" class="btn btn-success" style="margin-left: 90px;"><?php echo display('update_profile') ?></button>
                        </div>
                    </div>
                </div>
                <?php echo form_close()?>
            </div>
        </div> 
    </section> <!-- /.content -->
</div> <!-- /.content-wrapper -->
<!-- Edit Profile Page End -->

<script>
$(document).ready(function() {
    // Display roles as badges
    var rolesDisplay = $('#roleDisplayInput').val();
    var rolesArray = [];
    
    // Parse roles from comma-separated string
    if (rolesDisplay && rolesDisplay !== '{roles_display}' && rolesDisplay !== 'No Role Assigned') {
        rolesArray = rolesDisplay.split(',').map(function(role) {
            return role.trim();
        }).filter(function(role) {
            return role.length > 0;
        });
    }
    
    // If we have roles, display them as badges
    if (rolesArray.length > 0) {
        var badgesHtml = '';
        rolesArray.forEach(function(role) {
            badgesHtml += '<span class="label label-primary" style="margin-right: 5px; margin-bottom: 5px; display: inline-block; padding: 6px 12px; font-size: 13px;">' +
                         '<i class="fa fa-user-circle"></i> ' + role + 
                         '</span>';
        });
        $('#roleDisplayContainer').html(badgesHtml);
    }
});
</script>