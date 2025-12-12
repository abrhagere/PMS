<!-- Appointment Calendar View -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-date"></i>
        </div>
        <div class="header-title">
            <h1>Appointment Calendar</h1>
            <small>View and manage appointments</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url(); ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="<?php echo base_url('appointments'); ?>">Appointments</a></li>
                <li class="active">Calendar</li>
            </ol>
        </div>
    </section>

    <section class="content">
        
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>
                                <i class="fa fa-calendar"></i> Appointment Calendar
                                <?php if($this->permission1->method('appointments','create')->access()){ ?>
                                <a href="<?php echo base_url('appointments/book'); ?>" class="btn btn-success btn-sm pull-right">
                                    <i class="fa fa-plus"></i> Book Appointment
                                </a>
                                <a href="<?php echo base_url('appointments'); ?>" class="btn btn-default btn-sm pull-right" style="margin-right: 5px;">
                                    <i class="fa fa-list"></i> List View
                                </a>
                                <?php } ?>
                            </h4>
                        </div>
                    </div>
                    <div class="panel-body">
                        
                        <!-- Doctor Filter -->
                        <div class="form-group">
                            <label>Filter by Doctor:</label>
                            <select id="doctorFilter" class="form-control" style="max-width: 300px;">
                                <option value="">All Doctors</option>
                                <?php if (!empty($doctors)): ?>
                                    <?php foreach ($doctors as $doctor): ?>
                                        <option value="<?php echo $doctor->user_id; ?>">
                                            Dr. <?php echo $doctor->full_name; ?>
                                            <?php if ($doctor->specialization): ?>
                                                (<?php echo $doctor->specialization; ?>)
                                            <?php endif; ?>
                                        </option>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </select>
                        </div>
                        
                        <hr>
                        
                        <!-- Calendar Container -->
                        <div id="appointmentCalendar"></div>
                        
                        <!-- Legend -->
                        <div style="margin-top: 20px;">
                            <strong>Legend:</strong>
                            <span class="label label-info">Scheduled</span>
                            <span class="label label-success">Confirmed</span>
                            <span class="label label-warning">In Progress</span>
                            <span class="label" style="background: #6c757d;">Completed</span>
                            <span class="label label-danger">Cancelled</span>
                            <span class="label" style="background: #e83e8c;">No Show</span>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>

<!-- FullCalendar CSS -->
<link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet" />
<!-- FullCalendar JS -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>

<script>
document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('appointmentCalendar');
    var doctorFilter = '';
    
    var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay'
        },
        events: function(info, successCallback, failureCallback) {
            $.ajax({
                url: '<?php echo base_url("appointments/get-calendar-events"); ?>',
                type: 'GET',
                data: {
                    start: info.startStr,
                    end: info.endStr,
                    doctor_id: doctorFilter
                },
                success: function(data) {
                    successCallback(data);
                },
                error: function() {
                    failureCallback();
                }
            });
        },
        eventClick: function(info) {
            info.jsEvent.preventDefault();
            if (info.event.url) {
                window.location.href = info.event.url;
            }
        },
        height: 'auto',
        navLinks: true,
        editable: false,
        dayMaxEvents: true,
        eventTimeFormat: {
            hour: '2-digit',
            minute: '2-digit',
            meridiem: 'short'
        }
    });
    
    calendar.render();
    
    // Doctor filter change
    $('#doctorFilter').change(function() {
        doctorFilter = $(this).val();
        calendar.refetchEvents();
    });
});
</script>

<style>
.fc {
    font-family: inherit;
}
.fc .fc-button {
    background: #667eea;
    border-color: #667eea;
}
.fc .fc-button:hover {
    background: #5568d3;
    border-color: #5568d3;
}
.fc .fc-button-active {
    background: #4556c0;
    border-color: #4556c0;
}
</style>









