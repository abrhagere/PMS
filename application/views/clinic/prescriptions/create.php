<!-- Create Prescription -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-note2"></i></div>
        <div class="header-title">
            <h1>Create Prescription</h1>
        </div>
    </section>

    <section class="content">
        <form method="post">
            <div class="panel panel-bd">
                <div class="panel-body">
                    <?php if(isset($consultation)): ?>
                        <input type="hidden" name="patient_id" value="<?php echo $consultation->patient_id; ?>">
                        <div class="alert alert-info">
                            <strong>Patient:</strong> <?php echo $consultation->first_name . ' ' . $consultation->last_name; ?><br>
                            <strong>Diagnosis:</strong> <?php echo $consultation->diagnosis; ?>
                        </div>
                    <?php else: ?>
                        <div class="form-group">
                            <label>Patient</label>
                            <select name="patient_id" class="form-control" required>
                                <option value="">Select Patient</option>
                                <?php if (!empty($patients)): foreach ($patients as $p): ?>
                                    <option value="<?php echo $p->patient_id; ?>"><?php echo $p->full_name; ?></option>
                                <?php endforeach; endif; ?>
                            </select>
                        </div>
                    <?php endif; ?>

                    <div class="form-group">
                        <label>Diagnosis</label>
                        <textarea name="diagnosis" class="form-control" rows="2"><?php echo isset($consultation) ? $consultation->diagnosis : ''; ?></textarea>
                    </div>

                    <h4>Medicines</h4>
                    <div class="alert alert-info">
                        <i class="fa fa-info-circle"></i> Select from available medications in inventory (not expired, with stock)
                    </div>
                    <div id="medicineList">
                        <div class="row medicine-row" style="margin-bottom: 10px;">
                            <div class="col-sm-4">
                                <select name="product_id[]" class="form-control medicine-select" required onchange="fillMedicineDetails(this, 0)">
                                    <option value="">-- Select Medicine --</option>
                                    <?php if (!empty($available_medications)): ?>
                                        <?php foreach ($available_medications as $med): ?>
                                            <option value="<?php echo $med->product_id; ?>" 
                                                    data-name="<?php echo htmlspecialchars($med->product_name); ?>"
                                                    data-generic="<?php echo htmlspecialchars($med->generic_name); ?>"
                                                    data-strength="<?php echo htmlspecialchars($med->strength); ?>"
                                                    data-unit="<?php echo htmlspecialchars($med->unit); ?>"
                                                    data-available="<?php echo $med->available_quantity; ?>">
                                                <?php echo $med->product_name; ?>
                                                <?php if ($med->generic_name): ?>
                                                    (<?php echo $med->generic_name; ?>)
                                                <?php endif; ?>
                                                - <?php echo $med->strength; ?> - Stock: <?php echo (int)$med->available_quantity; ?>
                                            </option>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </select>
                                <input type="hidden" name="medicine_name[]" class="medicine-name-hidden">
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="dosage[]" class="form-control dosage-input" placeholder="Dosage (e.g., 500mg)">
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="frequency[]" class="form-control" placeholder="Frequency (e.g., 3x/day)">
                            </div>
                            <div class="col-sm-2">
                                <input type="text" name="duration[]" class="form-control" placeholder="Duration (e.g., 7 days)">
                            </div>
                            <div class="col-sm-1">
                                <input type="number" name="quantity[]" class="form-control qty-input" placeholder="Qty" min="1">
                            </div>
                            <div class="col-sm-1">
                                <button type="button" class="btn btn-success" onclick="addMedicine()"><i class="fa fa-plus"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="form-group" style="margin-top: 15px;">
                        <label>Instructions for Patient</label>
                        <textarea name="instructions" class="form-control" rows="2"></textarea>
                    </div>

                    <button type="submit" name="submit" value="1" class="btn btn-success btn-lg">
                        <i class="fa fa-save"></i> Create Prescription
                    </button>
                </div>
            </div>
        </form>
    </section>
</div>

<!-- Select2 CSS -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<!-- Select2 JS -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script>
let medicineCounter = 1;

$(document).ready(function() {
    // Initialize Select2 on existing medicine selects
    initializeSelect2();
});

function initializeSelect2() {
    $('.medicine-select').select2({
        placeholder: 'Search medicine by name...',
        allowClear: true,
        width: '100%'
    });
}

function fillMedicineDetails(selectElement, rowIndex) {
    const selectedOption = $(selectElement).find('option:selected');
    const row = $(selectElement).closest('.medicine-row');
    
    if (selectedOption.val()) {
        const medicineName = selectedOption.data('name');
        const strength = selectedOption.data('strength');
        const availableQty = selectedOption.data('available');
        
        // Fill hidden medicine name field
        row.find('.medicine-name-hidden').val(medicineName + ' ' + strength);
        
        // Set max quantity based on available stock
        row.find('.qty-input').attr('max', availableQty);
        row.find('.qty-input').attr('title', 'Available: ' + availableQty);
        
        // Auto-fill dosage if strength is available
        if (strength) {
            row.find('.dosage-input').val(strength);
        }
    }
}

function addMedicine() {
    medicineCounter++;
    
    var medicineOptions = $('.medicine-select').first().html();
    
    var html = '<div class="row medicine-row" style="margin-top: 10px; margin-bottom: 10px;">' +
        '<div class="col-sm-4">' +
            '<select name="product_id[]" class="form-control medicine-select" onchange="fillMedicineDetails(this, ' + medicineCounter + ')">' +
                medicineOptions +
            '</select>' +
            '<input type="hidden" name="medicine_name[]" class="medicine-name-hidden">' +
        '</div>' +
        '<div class="col-sm-2">' +
            '<input type="text" name="dosage[]" class="form-control dosage-input" placeholder="Dosage">' +
        '</div>' +
        '<div class="col-sm-2">' +
            '<input type="text" name="frequency[]" class="form-control" placeholder="Frequency">' +
        '</div>' +
        '<div class="col-sm-2">' +
            '<input type="text" name="duration[]" class="form-control" placeholder="Duration">' +
        '</div>' +
        '<div class="col-sm-1">' +
            '<input type="number" name="quantity[]" class="form-control qty-input" placeholder="Qty" min="1">' +
        '</div>' +
        '<div class="col-sm-1">' +
            '<button type="button" class="btn btn-danger" onclick="$(this).closest(\'.medicine-row\').remove()"><i class="fa fa-minus"></i></button>' +
        '</div>' +
        '</div>';
    
    $('#medicineList').append(html);
    
    // Reinitialize Select2 for new dropdown
    initializeSelect2();
}

// Validate quantities before submit
$('form').on('submit', function(e) {
    let isValid = true;
    
    $('.medicine-row').each(function() {
        const select = $(this).find('.medicine-select');
        const qtyInput = $(this).find('.qty-input');
        
        if (select.val()) {
            const maxQty = parseInt(qtyInput.attr('max'));
            const requestedQty = parseInt(qtyInput.val());
            
            if (requestedQty > maxQty) {
                alert('Quantity for ' + select.find('option:selected').text() + ' exceeds available stock (' + maxQty + ')');
                isValid = false;
                qtyInput.focus();
                return false;
            }
        }
    });
    
    if (!isValid) {
        e.preventDefault();
        return false;
    }
});
</script>

<style>
.select2-container {
    width: 100% !important;
}
.select2-container .select2-selection--single {
    height: 34px;
    border: 1px solid #ccc;
}
.select2-container--default .select2-selection--single .select2-selection__rendered {
    line-height: 32px;
}
.select2-container--default .select2-selection--single .select2-selection__arrow {
    height: 32px;
}
</style>

