<!-- Lab Orders List -->
<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd">
            <div class="panel-heading">
                <h4>
                    <i class="fa fa-flask"></i> Laboratory Orders
                    <?php if($this->permission1->method('lab_orders','create')->access()){ ?>
                    <a href="<?php echo base_url('lab/orders/create'); ?>" class="btn btn-success btn-sm pull-right">
                        <i class="fa fa-plus"></i> New Lab Order
                    </a>
                    <?php } ?>
                </h4>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Order #</th>
                                <th>Date</th>
                                <th>Patient</th>
                                <th>Doctor</th>
                                <th>Priority</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($lab_orders)): foreach ($lab_orders as $order): ?>
                                <tr>
                                    <td><strong><?php echo $order->order_number; ?></strong></td>
                                    <td><?php echo date('M d, Y', strtotime($order->order_date)); ?></td>
                                    <td><?php echo $order->patient_name; ?></td>
                                    <td>Dr. <?php echo $order->doctor_name; ?></td>
                                    <td><span class="label label-<?php echo $order->priority == 'STAT' ? 'danger' : ($order->priority == 'Urgent' ? 'warning' : 'default'); ?>"><?php echo $order->priority; ?></span></td>
                                    <td><span class="label label-info"><?php echo $order->status; ?></span></td>
                                    <td>
                                        <a href="<?php echo base_url('lab/orders/view/'.$order->order_id); ?>" class="btn btn-info btn-xs">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; else: ?>
                                <tr><td colspan="7" class="text-center">No lab orders found</td></tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

