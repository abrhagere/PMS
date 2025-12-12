<script src='https://www.google.com/recaptcha/api.js'></script>
<!-- Admin login area start-->
<style>
    .container-center {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        padding: 20px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    }
    .panel.panel-bd {
        width: 100%;
        max-width: 480px;
        border-radius: 12px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
        border: none;
        overflow: hidden;
        background: #ffffff;
    }
    .panel-heading {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: #ffffff;
        padding: 30px 25px;
        border-bottom: none;
    }
    .view-header {
        text-align: center;
    }
    .header-icon {
        margin-bottom: 15px;
    }
    .header-icon i {
        font-size: 48px;
        color: #ffffff;
    }
    .header-title h3 {
        font-size: 32px;
        font-weight: 600;
        margin: 0 0 10px 0;
        color: #ffffff;
    }
    .header-title small {
        font-size: 16px;
        color: rgba(255, 255, 255, 0.9);
        display: block;
    }
    .panel-body {
        padding: 35px 30px;
    }
    .form-group {
        margin-bottom: 25px;
    }
    .form-group label.control-label {
        font-size: 16px;
        font-weight: 600;
        color: #333;
        margin-bottom: 10px;
        display: block;
    }
    .form-group input.form-control {
        font-size: 18px;
        padding: 14px 18px;
        height: auto;
        border: 2px solid #e0e0e0;
        border-radius: 8px;
        transition: all 0.3s ease;
        width: 100%;
        box-sizing: border-box;
    }
    .form-group input.form-control:focus {
        border-color: #667eea;
        outline: none;
        box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
    }
    .form-group .help-block {
        font-size: 14px;
        color: #666;
        margin-top: 8px;
    }
    .btn-success {
        font-size: 18px;
        font-weight: 600;
        padding: 14px 30px;
        width: 100%;
        border-radius: 8px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        border: none;
        transition: all 0.3s ease;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }
    .btn-success:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 20px rgba(102, 126, 234, 0.4);
        background: linear-gradient(135deg, #764ba2 0%, #667eea 100%);
    }
    .alert {
        font-size: 16px;
        padding: 15px 20px;
        border-radius: 8px;
        margin-bottom: 20px;
    }
    .g-recaptcha {
        margin-bottom: 20px;
    }
</style>
<div class="container-center">
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
        $CI =& get_instance();
        $CI->load->model('Web_settings');
        $setting_detail = $CI->Web_settings->retrieve_setting_editdata();
    ?>
    <div class="panel panel-bd">
        <div class="panel-heading">
            <div class="view-header">
                <div class="header-icon">
                    <i class="pe-7s-unlock"></i>
                </div>
                <div class="header-title">
                    <h3><?php echo display('login') ?></h3>
                    <small><strong><?php echo display('please_enter_your_login_information') ?></strong></small>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <?php echo form_open('Admin_dashboard/do_login',array('id' => 'login', ))?>
                <div class="form-group">
                    <label class="control-label" for="username"><?php echo display('email') ?></label>
                    <input type="email" placeholder="<?php echo display('email') ?>" title="<?php echo display('email') ?>" required="" name="username" id="username" class="form-control">
                    <span class="help-block small"><?php echo display('your_unique_email') ?></span>
                </div>
                <div class="form-group">
                    <label class="control-label" for="password"><?php echo display('password') ?></label>
                    <input type="password" title="Please enter your password" placeholder="<?php echo display('password') ?>" required="" name="password" id="password" class="form-control">
                    <span class="help-block small"><?php echo display('your_strong_password') ?></span>
                </div>

                <?php if($setting_detail[0]['captcha'] == 0 && $setting_detail[0]['site_key'] != null && $setting_detail[0]['secret_key'] != null){ ?>
                <div style="margin-bottom: 10px" class="g-recaptcha" data-sitekey="<?php if (isset($setting_detail[0]['site_key'])){ echo $setting_detail[0]['site_key'];} ?>">
                </div>
                <?php } ?>

                <div>
                    <button class="btn btn-success"><?php echo display('login') ?></button>
                </div>
            <?php echo form_close()?>
        </div>



    </div>
</div>
<!-- Admin login area end -->

<!-- //User select js -->
<script type="text/javascript">
    $(document).ready(function() {
        var info = $('table tbody tr');
        info.click(function() {
            var email    = $(this).children().first().text();
            var password = $(this).children().first().next().text();
            var user_role = $(this).attr('data-role');

            $("input[type=email]").val(email);
            $("input[type=password]").val(password);
            $('select option[value='+user_role+']').attr("selected", "selected");
        });
    });
</script>

