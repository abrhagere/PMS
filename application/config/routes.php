<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

// ============================================
// CLINIC MANAGEMENT SYSTEM ROUTES
// ============================================

// Clinic Dashboard
$route['clinic'] = 'Clinic_dashboard/index';
$route['clinic/dashboard'] = 'Clinic_dashboard/index';
$route['clinic/quick-stats'] = 'Clinic_dashboard/quick_stats';

// Patient Management
$route['patients'] = 'Patients/index';
$route['patients/index'] = 'Patients/index';
$route['patients/index/(:num)'] = 'Patients/index/$1';
$route['patients/add'] = 'Patients/add';
$route['patients/view/(:num)'] = 'Patients/view/$1';
$route['patients/edit/(:num)'] = 'Patients/edit/$1';
$route['patients/delete/(:num)'] = 'Patients/delete/$1';
$route['patients/search'] = 'Patients/search';
$route['patients/print-card/(:num)'] = 'Patients/print_card/$1';

// Appointment Management
$route['appointments'] = 'Appointments/index';
$route['appointments/index'] = 'Appointments/index';
$route['appointments/calendar'] = 'Appointments/calendar';
$route['appointments/book'] = 'Appointments/book';
$route['appointments/view/(:num)'] = 'Appointments/view/$1';
$route['appointments/edit/(:num)'] = 'Appointments/edit/$1';
$route['appointments/cancel/(:num)'] = 'Appointments/cancel/$1';
$route['appointments/status/(:num)/(:any)'] = 'Appointments/update_status/$1/$2';

// Consultation Management
$route['consultations'] = 'Consultations/index';
$route['consultations/create/(:num)'] = 'Consultations/create/$1';
$route['consultations/view/(:num)'] = 'Consultations/view/$1';
$route['consultations/edit/(:num)'] = 'Consultations/edit/$1';

// Prescription Management
$route['prescriptions'] = 'Prescriptions/index';
$route['prescriptions/create/(:num)'] = 'Prescriptions/create/$1';
$route['prescriptions/view/(:num)'] = 'Prescriptions/view/$1';
$route['prescriptions/print/(:num)'] = 'Prescriptions/print/$1';
$route['prescriptions/dispense/(:num)'] = 'Prescriptions/dispense/$1';

// Vitals (Nurse Station)
$route['vitals'] = 'Vitals/index';
$route['vitals/record/(:num)'] = 'Vitals/record/$1';
$route['vitals/history/(:num)'] = 'Vitals/history/$1';

// Lab Management
$route['lab'] = 'Lab_orders/index';
$route['lab/orders'] = 'Lab_orders/index';
$route['lab/orders/new'] = 'Lab_orders/create';
$route['lab/create'] = 'Lab_orders/create';
$route['lab/create/(:num)'] = 'Lab_orders/create/$1';
$route['lab/view/(:num)'] = 'Lab_orders/view/$1';
$route['lab/results/(:num)'] = 'Lab_orders/results/$1';

// Lab Tests Management
$route['lab_tests'] = 'Lab_tests/index';
$route['lab_tests/index'] = 'Lab_tests/index';
$route['lab_tests/add'] = 'Lab_tests/add';
$route['lab_tests/edit/(:num)'] = 'Lab_tests/edit/$1';
$route['lab_tests/delete/(:num)'] = 'Lab_tests/delete/$1';

// Billing
$route['clinic-billing'] = 'Clinic_billing/index';
$route['clinic-billing/create/(:num)'] = 'Clinic_billing/create/$1';
$route['clinic-billing/view/(:num)'] = 'Clinic_billing/view/$1';
$route['clinic-billing/payment/(:num)'] = 'Clinic_billing/payment/$1';

// Reports
$route['clinic/reports'] = 'Clinic_reports/index';
$route['clinic/reports/patients'] = 'Clinic_reports/patients';
$route['clinic/reports/appointments'] = 'Clinic_reports/appointments';
$route['clinic/reports/revenue'] = 'Clinic_reports/revenue';

// ============================================
// EXISTING ROUTES
// ============================================

$route['default_controller'] = 'admin_dashboard';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
