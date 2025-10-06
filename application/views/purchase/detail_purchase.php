<style type="text/css">
    .prints {
        background-color: #31B404;
        color: #fff;
    }
</style>

<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('manage_purchase') ?></h1>
            <small><?php echo display('detail_pur') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('purchase') ?></a></li>
                <li class="active"><?php echo display('detail_pur') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">

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

        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-7">
                        <form action="" class="form-inline" method="post" accept-charset="utf-8">

                            <div class="form-group">
                                <label for="from_date"><?php echo display('from') ?></label>
                                <input type="text" name="fromdate" class="form-control datepicker" id="from_date" value="" placeholder="<?php echo display('start_date') ?>">
                            </div>

                            <div class="form-group">
                                <label for="to_date"><?php echo display('to') ?></label>
                                <input type="text" name="todate" class="form-control datepicker" id="to_date" placeholder="<?php echo display('end_date') ?>" value="">
                            </div>

                            <button type="button" id="btn-filter" class="btn btn-success"><?php echo display('find') ?></button>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Manage Purchase report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <!-- Optional title here -->
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="PurDetailList">
                                <thead>
                                    <tr>
                                        <th><?php echo display('sl') ?></th>
                                        <th><?php echo display('product_name') ?></th>
                                          <th><?php echo display('manufacturer_name') ?></th>
                                        <th><?php echo display('purchase_date') ?></th>
                                        <th><?php echo display('quantity') ?></th>
                                        <th><?php echo display('rate') ?></th>
                                        <th><?php echo display('total_amount') ?></th>
                                      
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th colspan="4" style="text-align:right">Total:</th>
                                        <th></th> <!-- This will hold the sum for total_amount -->
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Manage Purchase End -->
<!-- Manage Product End -->

<script>
    $(document).ready(function() {
        var mydatatable = $('#PurDetailList').DataTable({
            responsive: true,
            "aaSorting": [[4, "desc"]],
            "columnDefs": [
                { "orderable": false, "targets": [0, 1, 2, 3, 5, 6] }
            ],
            'processing': true,
            'serverSide': true,
            'lengthMenu': [
                [10, 25, 50, 100, 250, 500],
                [10, 25, 50, 100, 250, 500]
            ],
            dom: "<'row'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'f>>" +
                "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            buttons: [{
                    extend: "copy",
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5, 6]
                    },
                    className: "btn-sm prints"
                },
                {
                    extend: "csv",
                    title: "PurDetailList",
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5, 6]
                    },
                    className: "btn-sm prints"
                },
                {
                    extend: "excel",
                    title: "PurDetailList",
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5, 6]
                    },
                    className: "btn-sm prints"
                },
                {
                    extend: "pdf",
                    title: "PurDetailList",
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5, 6]
                    },
                    className: "btn-sm prints"
                },
                {
                    extend: "print",
                    title: "PurDetailList",
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5]
                    },
                    className: "btn-sm prints"
                }
            ],
            'serverMethod': 'post',
            'ajax': {
                'url': '<?=base_url()?>Cpurchase/CheckPurchaseDetailList',
                'data': function(data) {
                    data.fromdate = $('#from_date').val();
                    data.todate = $('#to_date').val();
                }
            },
            'columns': [{
                    data: 'sl'
                },
                {
                    data: 'product_name'
                },
                {
                    data: 'manufacturer_name'
                },
                 {
                    data: 'purchase_date'
                },
               
                {
                    data: 'quantity'
                },
                {
                    data: 'rate'
                },
                {
                    data: 'total_amount',
                    className: "total_sale"
                }
                
            ],
            "footerCallback": function(row, data, start, end, display) {
    var api = this.api();

    // Helper to parse float safely
    var parseFloatSafe = function(i) {
        return typeof i === 'string' ?
            parseFloat(i.replace(/[\$,]/g, '')) || 0 :
            typeof i === 'number' ? i : 0;
    };

    // Sum quantity column (index 4)
    var quantitySum = api
        .column(4, { page: 'current' })
        .data()
        .reduce(function(a, b) {
            return parseFloatSafe(a) + parseFloatSafe(b);
        }, 0);

    // Sum rate column (index 5)
    var rateSum = api
        .column(5, { page: 'current' })
        .data()
        .reduce(function(a, b) {
            return parseFloatSafe(a) + parseFloatSafe(b);
        }, 0);

    // Sum total_amount column (index 6)
    var totalAmountSum = api
        .column(6, { page: 'current' })
        .data()
        .reduce(function(a, b) {
            return parseFloatSafe(a) + parseFloatSafe(b);
        }, 0);

    // Update footer
    $(api.column(4).footer()).html(quantitySum.toFixed(2));
    $(api.column(5).footer()).html(rateSum.toFixed(2));
    $(api.column(6).footer()).html(totalAmountSum.toFixed(2));
}

        });

        // Filter button click reloads table with date filters
        $('#btn-filter').click(function() {
            mydatatable.ajax.reload();
        });
    });
</script>
