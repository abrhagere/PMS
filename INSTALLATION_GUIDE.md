# Clinic Management System - Installation Guide

## Quick Start Commands

### Step 1: Run Database Setup
```bash
/opt/lampp/bin/mysql -u root pms < /tmp/clinic_schema.sql
```

### Step 2: Create Directory Structure
```bash
sudo mkdir -p /opt/lampp/htdocs/pms/application/models/clinic
sudo mkdir -p /opt/lampp/htdocs/pms/application/controllers/clinic
sudo mkdir -p /opt/lampp/htdocs/pms/application/views/clinic/{patients,appointments,consultations,dashboard}
sudo mkdir -p /opt/lampp/htdocs/pms/assets/images/patients
```

### Step 3: Copy Model Files
```bash
sudo cp /tmp/Patient_model.php /opt/lampp/htdocs/pms/application/models/
```

### Step 4: Set Permissions
```bash
sudo chown nobody:nogroup /opt/lampp/htdocs/pms/application/models/Patient_model.php
sudo chmod 755 /opt/lampp/htdocs/pms/application/models/Patient_model.php
sudo chmod 777 /opt/lampp/htdocs/pms/assets/images/patients
```

### Step 5: Make Installation Script Executable and Run
```bash
chmod +x /tmp/install_clinic_system.sh
bash /tmp/install_clinic_system.sh
```

---

## What Has Been Created

### 1. Database Schema (`/tmp/clinic_schema.sql`)
**14 Tables Created:**
- `patients` - Patient demographics and information
- `appointments` - Appointment scheduling
- `patient_vitals` - Vital signs recorded by nurses
- `consultations` - Doctor consultation records
- `prescriptions` + `prescription_details` - Prescription management
- `lab_tests` + `lab_orders` + `lab_order_details` - Lab management
- `clinic_invoices` + `clinic_invoice_details` - Billing
- `doctor_schedules` - Doctor availability
- `medical_services` - Service catalog
- `patient_history` - Medical history
- `doctor_profiles` - Doctor information

**Sample Data Included:**
- 4 Medical services (Consultation types)
- 8 Lab tests (CBC, Blood Sugar, Lipid Profile, etc.)

### 2. Patient Model (`/tmp/Patient_model.php`)
**Key Functions:**
- `generate_patient_code()` - Auto-generates PAT-2025-0001 format
- `create_patient()` - Create new patient record
- `get_patient()` - Get patient with related data
- `get_all_patients()` - List with pagination and search
- `search_patients()` - Autocomplete search
- `get_patient_stats()` - Statistics dashboard

### 3. Views Created (2 views)
- `v_patient_appointments` - Appointment summary with doctor names
- `v_consultation_summary` - Consultation history

---

## Database Verification

### Check if tables were created:
```bash
/opt/lampp/bin/mysql -u root pms -e "SHOW TABLES LIKE '%patient%'; SHOW TABLES LIKE '%appointment%'; SHOW TABLES LIKE '%consultation%';"
```

### View sample services:
```bash
/opt/lampp/bin/mysql -u root pms -e "SELECT * FROM medical_services;"
```

### View sample lab tests:
```bash
/opt/lampp/bin/mysql -u root pms -e "SELECT test_name, test_category, price FROM lab_tests;"
```

---

## Integration Points with Existing PMS

### 1. **User Authentication**
- Uses existing `user_login` and `users` tables
- Added `role` column to `user_login` for role-based access

### 2. **Product Integration**
- `prescription_details.product_id` links to `product.product_id`
- Prescriptions can reference pharmacy inventory

### 3. **Customer Integration**
- `patients.customer_id` can link to `customer.customer_id`
- Unified customer/patient records

---

## Next Steps - Phase 1 Implementation

### Controllers to Create:
1. **Clinic_dashboard.php** - Main dashboard
2. **Patients.php** - Patient management ✓ (Model created)
3. **Appointments.php** - Appointment scheduling
4. **Vitals.php** - Nurse station vitals recording

### Models to Create:
1. **Patient_model.php** ✓ (Created)
2. **Appointment_model.php**
3. **Vital_model.php**
4. **Consultation_model.php**

### Views to Create:
1. **clinic/dashboard.php** - Main dashboard
2. **clinic/patients/list.php** - Patient listing
3. **clinic/patients/add.php** - Add patient form
4. **clinic/patients/view.php** - Patient profile
5. **clinic/appointments/calendar.php** - Appointment calendar

---

## Testing the Installation

### 1. Login to PMS
```
URL: http://localhost/pms/
Email: branatech@gmail.com
Password: admin123
```

### 2. Test Patient Model (via PHP CLI)
```bash
cd /opt/lampp/htdocs/pms
/opt/lampp/bin/php -r "
require 'index.php';
\$CI =& get_instance();
\$CI->load->model('Patient_model');
echo \$CI->Patient_model->generate_patient_code();
"
```

---

## Configuration Updates Needed

### Add to `application/config/routes.php`:
```php
// Clinic Management Routes
$route['clinic'] = 'clinic_dashboard';
$route['clinic/dashboard'] = 'clinic_dashboard/index';

// Patient Routes
$route['patients'] = 'patients/index';
$route['patients/add'] = 'patients/add';
$route['patients/view/(:num)'] = 'patients/view/$1';
$route['patients/edit/(:num)'] = 'patients/edit/$1';
$route['patients/delete/(:num)'] = 'patients/delete/$1';
$route['patients/search'] = 'patients/search';

// Appointment Routes
$route['appointments'] = 'appointments/index';
$route['appointments/calendar'] = 'appointments/calendar';
$route['appointments/book'] = 'appointments/book';
```

### Add to `application/config/autoload.php`:
```php
// Auto-load clinic models
$autoload['model'] = array('Patient_model', 'Appointment_model');
```

---

## File Locations

**Database:**
- `/tmp/clinic_schema.sql` - Full database schema

**Models:**
- `/tmp/Patient_model.php` - Patient model (needs to be copied)

**Documentation:**
- `/opt/lampp/htdocs/pms/CLINIC_MANAGEMENT_SYSTEM_SPECIFICATION.md` - Full specification
- `/tmp/INSTALLATION_GUIDE.md` - This file

**Installation Script:**
- `/tmp/install_clinic_system.sh` - Automated installation

---

## Troubleshooting

### Permission Denied Errors
```bash
sudo chown -R nobody:nogroup /opt/lampp/htdocs/pms/application
```

### Database Connection Errors
Check database configuration:
```bash
cat /opt/lampp/htdocs/pms/application/config/database.php
```

### Model Not Found
Verify file location:
```bash
ls -la /opt/lampp/htdocs/pms/application/models/Patient_model.php
```

---

## Current Status

✅ **Phase 1 - Core Setup (In Progress)**
- ✅ Database schema created (14 tables)
- ✅ Patient model implemented
- ⏳ Patient controller (needs views)
- ⏳ Clinic dashboard
- ⏳ Views and UI

📋 **Phase 2 - Enhanced Features (Pending)**
- Prescription management
- Lab management
- Billing integration
- Reporting

🚀 **Phase 3 - Advanced Features (Future)**
- Notifications
- Analytics
- Patient portal
- Mobile optimization

---

## Support

For issues or questions:
1. Check the full specification: `CLINIC_MANAGEMENT_SYSTEM_SPECIFICATION.md`
2. Review existing PMS structure for consistency
3. Test database queries manually via phpMyAdmin

---

**End of Installation Guide**

