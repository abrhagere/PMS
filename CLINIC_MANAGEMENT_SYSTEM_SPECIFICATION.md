# **Comprehensive Clinic Management System (CMS) Integrated with Pharmacy Management System**

## **Implementation Status: ✅ 100% COMPLETE**
**Last Updated:** December 4, 2025

### **Quick Status:**
- ✅ Database Schema: 100% Complete
- ✅ Permission System: 100% Complete
- ✅ Navigation Menu: 100% Complete
- ✅ Patient Module: 100% Complete
- ✅ Appointments Module: 100% Complete
- ✅ Consultations Module: 100% Complete
- ✅ Vitals Module: 100% Complete
- ✅ Prescriptions Module: 100% Complete
- ✅ Lab Orders Module: 100% Complete
- ✅ Dashboard & Search: 100% Complete

**For detailed implementation status, see:** `CLINIC_IMPLEMENTATION_COMPLETE.md`

---

## **Project Overview**
Develop a full-featured Clinic Management System using **CodeIgniter 3.1.x** framework that seamlessly integrates with the existing Pharmacy Management System (PMS). The system should manage complete clinic operations with distinct role-based access for Reception, Cashier, Nurse, Doctor, and Pharmacist.

---

## **1. SYSTEM ARCHITECTURE**

### **Technology Stack**
- **Backend**: CodeIgniter 3.1.x (PHP 7.3+)
- **Database**: MySQL/MariaDB
- **Frontend**: Bootstrap 4.x, jQuery, AdminLTE theme
- **Additional Libraries**: 
  - PDF generation (DOMPDF/TCPDF)
  - Chart.js for analytics
  - FullCalendar for appointments
  - DataTables for data management

### **Integration Points with Existing PMS**
- Shared user authentication system
- Common database (extend existing schema)
- Unified patient records
- Prescription → Pharmacy workflow
- Shared billing/invoicing system
- Cross-module reporting

---

## **2. DATABASE SCHEMA DESIGN**

### **Core Tables to Create**

```sql
-- Patient Management
CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_code VARCHAR(20) UNIQUE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    blood_group VARCHAR(5),
    phone VARCHAR(20),
    email VARCHAR(100),
    address TEXT,
    emergency_contact VARCHAR(100),
    emergency_phone VARCHAR(20),
    national_id VARCHAR(50),
    insurance_provider VARCHAR(100),
    insurance_number VARCHAR(50),
    allergies TEXT,
    chronic_conditions TEXT,
    photo VARCHAR(255),
    registered_date DATETIME,
    status TINYINT DEFAULT 1,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Appointments
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_number VARCHAR(20) UNIQUE,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    duration INT DEFAULT 30, -- minutes
    appointment_type ENUM('Consultation', 'Follow-up', 'Emergency', 'Check-up'),
    status ENUM('Scheduled', 'Confirmed', 'In-Progress', 'Completed', 'Cancelled', 'No-Show'),
    symptoms TEXT,
    notes TEXT,
    created_by INT, -- reception user_id
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES users(user_id)
);

-- Vitals (Nurse Station)
CREATE TABLE patient_vitals (
    vital_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_id INT,
    recorded_by INT, -- nurse user_id
    temperature DECIMAL(4,1), -- Celsius
    blood_pressure_systolic INT,
    blood_pressure_diastolic INT,
    pulse_rate INT,
    respiratory_rate INT,
    weight DECIMAL(5,2), -- kg
    height DECIMAL(5,2), -- cm
    bmi DECIMAL(4,2),
    oxygen_saturation INT, -- SpO2 %
    blood_sugar DECIMAL(5,2), -- mg/dL
    notes TEXT,
    recorded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id),
    FOREIGN KEY (recorded_by) REFERENCES users(user_id)
);

-- Medical Records (Doctor Consultation)
CREATE TABLE consultations (
    consultation_id INT PRIMARY KEY AUTO_INCREMENT,
    consultation_number VARCHAR(20) UNIQUE,
    patient_id INT,
    appointment_id INT,
    doctor_id INT,
    consultation_date DATETIME,
    chief_complaint TEXT,
    history_of_present_illness TEXT,
    physical_examination TEXT,
    diagnosis TEXT,
    icd_code VARCHAR(20),
    treatment_plan TEXT,
    follow_up_date DATE,
    notes TEXT,
    status ENUM('Draft', 'Completed', 'Reviewed'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id),
    FOREIGN KEY (doctor_id) REFERENCES users(user_id)
);

-- Prescriptions (Integrated with Pharmacy)
CREATE TABLE prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    prescription_number VARCHAR(20) UNIQUE,
    consultation_id INT,
    patient_id INT,
    doctor_id INT,
    prescription_date DATE,
    status ENUM('Pending', 'Dispensed', 'Partially-Dispensed', 'Cancelled'),
    pharmacy_status ENUM('Not-Sent', 'Sent', 'In-Progress', 'Completed'),
    dispensed_by INT, -- pharmacist user_id
    dispensed_date DATETIME,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (consultation_id) REFERENCES consultations(consultation_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES users(user_id)
);

CREATE TABLE prescription_details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    prescription_id INT,
    product_id INT, -- links to PMS products table
    medicine_name VARCHAR(200),
    dosage VARCHAR(100),
    frequency VARCHAR(100),
    duration VARCHAR(50),
    quantity INT,
    dispensed_quantity INT DEFAULT 0,
    route VARCHAR(50), -- Oral, IV, Topical, etc.
    instructions TEXT,
    FOREIGN KEY (prescription_id) REFERENCES prescriptions(prescription_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Lab Tests
CREATE TABLE lab_tests (
    test_id INT PRIMARY KEY AUTO_INCREMENT,
    test_name VARCHAR(200),
    test_category VARCHAR(100),
    description TEXT,
    normal_range TEXT,
    price DECIMAL(10,2),
    status TINYINT DEFAULT 1
);

CREATE TABLE lab_orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_number VARCHAR(20) UNIQUE,
    patient_id INT,
    consultation_id INT,
    ordered_by INT, -- doctor user_id
    order_date DATETIME,
    status ENUM('Pending', 'Sample-Collected', 'In-Progress', 'Completed', 'Cancelled'),
    priority ENUM('Normal', 'Urgent', 'Stat'),
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (consultation_id) REFERENCES consultations(consultation_id)
);

CREATE TABLE lab_order_details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    test_id INT,
    result TEXT,
    result_date DATETIME,
    tested_by INT,
    remarks TEXT,
    FOREIGN KEY (order_id) REFERENCES lab_orders(order_id),
    FOREIGN KEY (test_id) REFERENCES lab_tests(test_id)
);

-- Billing (Integrated with existing PMS billing)
CREATE TABLE clinic_invoices (
    invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number VARCHAR(20) UNIQUE,
    patient_id INT,
    consultation_id INT,
    invoice_date DATE,
    total_amount DECIMAL(10,2),
    discount DECIMAL(10,2) DEFAULT 0,
    tax_amount DECIMAL(10,2) DEFAULT 0,
    paid_amount DECIMAL(10,2) DEFAULT 0,
    due_amount DECIMAL(10,2),
    payment_status ENUM('Unpaid', 'Partially-Paid', 'Paid'),
    payment_method VARCHAR(50),
    created_by INT, -- cashier user_id
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (consultation_id) REFERENCES consultations(consultation_id)
);

CREATE TABLE clinic_invoice_details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_id INT,
    item_type ENUM('Consultation', 'Lab-Test', 'Procedure', 'Medicine', 'Other'),
    item_id INT, -- reference to service/product
    description VARCHAR(255),
    quantity INT DEFAULT 1,
    unit_price DECIMAL(10,2),
    total DECIMAL(10,2),
    FOREIGN KEY (invoice_id) REFERENCES clinic_invoices(invoice_id)
);

-- Doctor Schedule
CREATE TABLE doctor_schedules (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_id INT,
    day_of_week TINYINT, -- 0=Sunday, 6=Saturday
    start_time TIME,
    end_time TIME,
    slot_duration INT DEFAULT 30, -- minutes
    max_appointments INT,
    status TINYINT DEFAULT 1,
    FOREIGN KEY (doctor_id) REFERENCES users(user_id)
);

-- Medical Services/Procedures
CREATE TABLE medical_services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    service_code VARCHAR(20) UNIQUE,
    service_name VARCHAR(200),
    service_category VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    duration INT, -- minutes
    status TINYINT DEFAULT 1
);

-- Patient Medical History
CREATE TABLE patient_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    consultation_id INT,
    category ENUM('Medical', 'Surgical', 'Family', 'Social', 'Allergy'),
    description TEXT,
    date_recorded DATE,
    recorded_by INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- User Role Extensions (add to existing user_login)
ALTER TABLE user_login ADD COLUMN role ENUM('Admin', 'Doctor', 'Nurse', 'Receptionist', 'Cashier', 'Pharmacist', 'Lab-Technician') AFTER user_type;

CREATE TABLE doctor_profiles (
    profile_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE,
    specialization VARCHAR(100),
    license_number VARCHAR(50),
    qualification TEXT,
    experience_years INT,
    consultation_fee DECIMAL(10,2),
    room_number VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
```

---

## **3. USER ROLES & PERMISSIONS**

### **Reception Role**
**Responsibilities:**
- Patient registration and management
- Appointment scheduling and management
- Patient check-in/check-out
- Generate registration cards
- View appointment calendar
- Basic reporting

**Permissions:**
- CREATE/READ/UPDATE patients
- CREATE/UPDATE/DELETE appointments
- READ doctor schedules
- READ consultation history (limited)
- Cannot access: prescriptions details, medical records

### **Nurse Role**
**Responsibilities:**
- Record patient vitals
- Patient triage
- Prepare patients for doctor consultation
- Assist in procedures
- Update appointment status
- View assigned patients

**Permissions:**
- READ patient information
- CREATE/READ vitals
- UPDATE appointment status (to "Ready for Doctor")
- READ consultation notes (view only)
- Cannot access: billing, prescriptions editing

### **Doctor Role**
**Responsibilities:**
- Patient consultation
- Diagnosis and treatment planning
- Write prescriptions
- Order lab tests
- Medical documentation
- Review patient history
- Schedule follow-ups

**Permissions:**
- FULL ACCESS to consultations
- CREATE/UPDATE prescriptions
- CREATE lab orders
- READ/UPDATE patient medical history
- READ vitals
- READ appointments (own schedule)
- Cannot access: billing details, pharmacy inventory

### **Pharmacist Role**
**Responsibilities:**
- Receive and process prescriptions
- Dispense medications
- Update prescription status
- Manage pharmacy inventory (existing PMS)
- Patient counseling on medications
- Stock management

**Permissions:**
- READ prescriptions
- UPDATE prescription status (dispensed)
- FULL ACCESS to pharmacy inventory (PMS)
- CREATE pharmacy sales
- READ patient allergies
- Cannot access: medical records, consultations

### **Cashier Role**
**Responsibilities:**
- Generate invoices
- Process payments
- Handle refunds
- Manage payment records
- Daily cash reconciliation
- Receipt printing

**Permissions:**
- CREATE/READ/UPDATE invoices
- CREATE payment records
- READ appointment details
- READ services and pricing
- Cannot access: medical records, prescriptions content

---

## **4. CORE MODULES & FEATURES**

### **Module 1: Patient Management**
**Features:**
- Patient registration with photo
- Unique patient ID generation (e.g., PAT-2025-0001)
- Patient search (by ID, name, phone, national ID)
- Patient profile view with tabs:
  - Demographics
  - Medical history
  - Consultation history
  - Prescriptions
  - Lab results
  - Billing history
- Patient card printing
- Bulk patient import (CSV)
- Patient SMS notifications
- Emergency contact management

**Workflows:**
1. **New Patient Registration** (Reception)
   - Fill patient details form
   - Upload photo (optional)
   - Assign unique patient code
   - Print patient card
   - Save and create appointment

2. **Patient Update** (Reception)
   - Search patient
   - Update information
   - Track changes (audit log)

---

### **Module 2: Appointment Management**
**Features:**
- Calendar view (daily/weekly/monthly)
- Online booking integration (optional)
- Appointment scheduling with doctor availability check
- Appointment types and duration settings
- Status tracking (Scheduled → Confirmed → In-Progress → Completed)
- SMS/Email reminders
- Appointment rescheduling
- Cancellation with reasons
- Walk-in patient handling
- Queue management display
- Doctor-wise appointment list

**Workflows:**
1. **Book Appointment** (Reception)
   - Select patient (or register new)
   - Choose doctor and check availability
   - Select date/time slot
   - Enter symptoms/reason
   - Confirm appointment
   - Print appointment slip

2. **Check-in Process** (Reception)
   - Search appointment
   - Mark as "Confirmed"
   - Send to nurse station

3. **Nurse Station** (Nurse)
   - View waiting patients
   - Record vitals
   - Mark as "Ready for Doctor"

4. **Doctor Consultation** (Doctor)
   - View patient queue
   - Open patient file
   - Start consultation
   - Complete and prescribe

---

### **Module 3: Doctor Consultation**
**Features:**
- Patient queue dashboard
- EMR (Electronic Medical Records) interface
- Voice-to-text for notes (optional)
- Templates for common diagnoses
- ICD-10 code integration
- Medical history review
- Vital signs display
- Previous consultation comparison
- Prescription writing interface
- Lab test ordering
- Treatment plan creation
- Follow-up scheduling
- Digital signature
- Consultation note printing

**Consultation Interface Sections:**
- Chief Complaint
- History of Present Illness
- Physical Examination
- Vital Signs (auto-populated from nurse)
- Diagnosis (with ICD codes)
- Investigations (Lab orders)
- Prescription
- Treatment Plan
- Follow-up Instructions
- Doctor's Notes

**Workflows:**
1. **Consultation Flow** (Doctor)
   - Open next patient from queue
   - Review vitals and history
   - Document examination
   - Enter diagnosis
   - Write prescription
   - Order labs (if needed)
   - Schedule follow-up
   - Complete consultation
   - Send to billing/pharmacy

---

### **Module 4: Prescription Management**
**Features:**
- Digital prescription creation
- Medicine search (from PMS inventory)
- Dosage templates
- Drug interaction warnings
- Allergy alerts
- Favorite prescriptions for common conditions
- Print prescription (with clinic letterhead)
- Send to pharmacy queue
- Prescription history
- Refill management
- Prescription status tracking

**Prescription Details Include:**
- Medicine name (generic/brand)
- Strength/dosage
- Frequency (e.g., 3x daily)
- Duration (e.g., 7 days)
- Quantity to dispense
- Route (oral, topical, etc.)
- Special instructions
- Refill information

**Workflows:**
1. **Prescription Creation** (Doctor)
   - During consultation
   - Search and add medicines
   - Set dosage and duration
   - Add instructions
   - Save and print
   - Auto-send to pharmacy

2. **Prescription Dispensing** (Pharmacist)
   - View pharmacy queue
   - Open prescription
   - Check stock availability
   - Dispense medicines
   - Update quantities
   - Mark as dispensed
   - Generate pharmacy bill
   - Patient counseling

---

### **Module 5: Billing & Payment**
**Features:**
- Service-based billing
- Consultation fees
- Lab test charges
- Procedure charges
- Medicine charges (from pharmacy)
- Multiple payment methods (Cash, Card, Insurance, Mobile Money)
- Partial payment handling
- Discount management (amount/percentage)
- Tax calculation
- Invoice generation
- Receipt printing
- Payment history
- Refund processing
- Insurance claim submission
- Outstanding dues report
- Daily collection report

**Workflows:**
1. **Billing Process** (Cashier)
   - After consultation completion
   - Open patient bill
   - Add consultation fee
   - Add lab tests ordered
   - Add medicines (from prescription)
   - Apply discounts
   - Calculate total
   - Generate invoice
   - Process payment
   - Print receipt

2. **Pharmacy Billing Integration**
   - Prescription auto-adds to bill
   - Real-time stock check
   - Price fetching from PMS
   - Combined clinic + pharmacy invoice

---

### **Module 6: Lab Management**
**Features:**
- Lab test catalog management
- Test categories
- Test pricing
- Lab order creation (by doctor)
- Sample collection tracking
- Result entry interface
- Normal range indicators
- Result approval workflow
- Report printing with graphs
- Email lab results
- Lab order history
- Pending tests dashboard
- Lab statistics

**Workflows:**
1. **Lab Order Flow** (Doctor)
   - During consultation
   - Select tests to order
   - Set priority (Normal/Urgent/Stat)
   - Add clinical notes
   - Submit order

2. **Sample Collection** (Nurse/Lab Tech)
   - View pending lab orders
   - Mark sample as collected
   - Barcode generation (optional)

3. **Result Entry** (Lab Technician)
   - Open lab order
   - Enter test results
   - Flag abnormal values
   - Add remarks
   - Submit for approval

4. **Result Review** (Doctor)
   - View lab results
   - Add interpretation
   - Communicate with patient

---

### **Module 7: Reports & Analytics**
**Features:**
- Patient registration report
- Appointment report (daily/monthly)
- Doctor-wise consultation report
- Revenue report (by service type)
- Payment collection report
- Outstanding dues report
- Medicine dispensing report
- Lab test report
- Patient visit history
- Disease-wise statistics
- Inventory alerts (low stock)
- Doctor performance dashboard
- Financial dashboards with charts

**Dashboard Widgets:**
- Today's appointments
- Pending consultations
- Revenue today/month
- New patients registered
- Prescriptions pending
- Lab tests pending
- Outstanding payments

---

## **5. INTEGRATION WITH EXISTING PMS**

### **Shared Components:**
1. **User Authentication**
   - Extend `user_login` table with role column
   - Single sign-on
   - Unified permission system

2. **Product/Medicine Integration**
   - Prescriptions link to PMS `product` table
   - Real-time stock checking
   - Price synchronization
   - Auto-update inventory on dispensing

3. **Billing Integration**
   - Unified invoice system
   - Combined clinic + pharmacy bills
   - Shared payment methods
   - Consolidated financial reports

4. **Patient-Customer Linking**
   - Link `patients` table to PMS `customer` table
   - Shared customer history
   - Loyalty points (optional)

5. **Reporting Integration**
   - Combined revenue reports
   - Cross-module analytics
   - Unified dashboard

### **Database Integration Points:**
```sql
-- Link prescriptions to pharmacy
ALTER TABLE prescription_details 
ADD CONSTRAINT fk_product 
FOREIGN KEY (product_id) REFERENCES product(product_id);

-- Link patients to customers
ALTER TABLE patients 
ADD COLUMN customer_id INT,
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

-- Extend user roles
UPDATE user_login SET role='Pharmacist' WHERE user_type='3';
```

---

## **6. UI/UX DESIGN REQUIREMENTS**

### **Design Principles:**
- **Consistent** with existing PMS theme
- **Clean and minimal** interface
- **Role-based** dashboards
- **Mobile-responsive** design
- **Fast loading** with AJAX
- **Intuitive navigation**
- **Color-coded** status indicators

### **Key UI Elements:**
1. **Unified Top Navigation:**
   - Dashboard
   - Patients
   - Appointments
   - Consultations
   - Pharmacy (if pharmacist)
   - Billing
   - Reports
   - Settings

2. **Role-Based Sidebar:**
   - Reception: Patients, Appointments, Queue
   - Nurse: Patient Queue, Vitals, Appointments
   - Doctor: My Appointments, Consultations, Patients
   - Pharmacist: Prescriptions, Inventory, Dispensing
   - Cashier: Billing, Invoices, Payments

3. **Dashboard Cards:**
   - Color-coded metrics
   - Quick action buttons
   - Recent activity feed
   - Shortcuts to common tasks

4. **Patient Profile Layout:**
   - Top: Patient photo + demographics
   - Tabs: Medical History, Consultations, Prescriptions, Lab Results, Bills
   - Quick actions: Book Appointment, New Consultation, View Bills

5. **Consultation Interface:**
   - Split screen: Patient info (left) + Consultation form (right)
   - Tabbed sections for organized data entry
   - Quick templates and shortcuts
   - Auto-save functionality

---

## **7. WORKFLOW DIAGRAMS**

### **Complete Patient Journey:**
```
1. Patient Registration (Reception)
   ↓
2. Book Appointment (Reception)
   ↓
3. Check-in on Arrival (Reception)
   ↓
4. Vitals Recording (Nurse)
   ↓
5. Doctor Consultation (Doctor)
   ↓
6. Prescription Writing (Doctor)
   ↓
7. Lab Order (Doctor) [if needed]
   ↓
8. Billing (Cashier)
   ↓
9. Medicine Dispensing (Pharmacist)
   ↓
10. Check-out & Follow-up Schedule (Reception)
```

### **Emergency Patient Flow:**
```
Walk-in Patient
   ↓
Quick Registration (Reception)
   ↓
Immediate Vitals (Nurse) - Priority Queue
   ↓
Emergency Consultation (Doctor)
   ↓
Treatment
   ↓
Billing & Discharge
```

---

## **8. ADDITIONAL FEATURES**

### **Advanced Features (Phase 2):**
1. **Patient Portal:**
   - Online appointment booking
   - View medical records
   - Download prescriptions
   - Lab result access
   - Bill payment

2. **SMS/Email Notifications:**
   - Appointment reminders
   - Prescription ready alerts
   - Bill payment reminders
   - Lab result notifications

3. **Telemedicine Integration:**
   - Video consultation
   - Digital prescription
   - Online payment

4. **Mobile App:**
   - Android/iOS for doctors
   - Quick consultation notes
   - Prescription writing on-the-go
   - View schedules

5. **Insurance Management:**
   - Insurance provider management
   - Claim submission
   - Approval tracking
   - Settlement reconciliation

6. **Inventory Management:**
   - Medical supplies tracking
   - Equipment management
   - Auto-reorder alerts
   - Supplier management

7. **HR Management:**
   - Staff attendance
   - Shift management
   - Salary processing
   - Leave management

---

## **9. SECURITY & COMPLIANCE**

### **Security Requirements:**
- **Role-based access control (RBAC)**
- **Audit logging** for all actions
- **Data encryption** for sensitive information
- **Password policies** (minimum 8 chars, complexity)
- **Session timeout** after inactivity
- **Two-factor authentication** (optional)
- **Backup automation** (daily)
- **SQL injection prevention**
- **XSS protection**

### **Compliance:**
- **HIPAA** compliance (if applicable)
- **Data privacy** regulations
- **Patient consent** management
- **Data retention** policies
- **Access logs** retention

---

## **10. TECHNICAL SPECIFICATIONS**

### **CodeIgniter Structure:**
```
application/
├── controllers/
│   ├── Clinic_dashboard.php
│   ├── Patients.php
│   ├── Appointments.php
│   ├── Consultations.php
│   ├── Prescriptions.php
│   ├── Vitals.php
│   ├── Lab_orders.php
│   ├── Clinic_billing.php
│   ├── Doctor_schedule.php
│   └── Clinic_reports.php
├── models/
│   ├── Patient_model.php
│   ├── Appointment_model.php
│   ├── Consultation_model.php
│   ├── Prescription_model.php
│   ├── Vital_model.php
│   ├── Lab_model.php
│   └── Clinic_invoice_model.php
├── views/
│   ├── clinic/
│   │   ├── dashboard.php
│   │   ├── patients/
│   │   ├── appointments/
│   │   ├── consultations/
│   │   ├── prescriptions/
│   │   ├── vitals/
│   │   ├── billing/
│   │   └── reports/
├── libraries/
│   ├── Clinic_auth.php
│   ├── Pdf_generator.php
│   └── Notification.php
└── config/
    └── clinic_config.php
```

### **API Endpoints (RESTful):**
```
GET    /api/patients           - List patients
POST   /api/patients           - Create patient
GET    /api/patients/:id       - Get patient details
PUT    /api/patients/:id       - Update patient
DELETE /api/patients/:id       - Delete patient

GET    /api/appointments       - List appointments
POST   /api/appointments       - Create appointment
GET    /api/appointments/:id   - Get appointment
PUT    /api/appointments/:id   - Update appointment

POST   /api/consultations      - Create consultation
GET    /api/consultations/:id  - Get consultation

POST   /api/prescriptions      - Create prescription
GET    /api/prescriptions/:id  - Get prescription
PUT    /api/prescriptions/:id  - Update status

GET    /api/doctors/availability/:doctor_id/:date
POST   /api/billing/invoice
GET    /api/reports/revenue?start=&end=
```

---

## **11. IMPLEMENTATION PHASES**

### **Phase 1 (Core - 4-6 weeks):**
- Patient management
- Appointment system
- Basic consultation
- User roles and permissions
- Vitals recording
- Simple billing

### **Phase 2 (Enhanced - 3-4 weeks):**
- Prescription management
- Pharmacy integration
- Lab management
- Advanced reporting
- Doctor schedules

### **Phase 3 (Advanced - 2-3 weeks):**
- SMS/Email notifications
- Advanced analytics
- Insurance integration
- Patient portal
- Mobile optimization

### **Phase 4 (Optional - 2-3 weeks):**
- Telemedicine
- Mobile apps
- HR management
- Inventory management

---

## **12. TESTING REQUIREMENTS**

### **Test Cases to Cover:**
1. **User Authentication:**
   - Login/logout for each role
   - Permission checks
   - Session management

2. **Patient Management:**
   - Registration with validation
   - Duplicate checking
   - Search functionality
   - Patient card printing

3. **Appointment System:**
   - Booking conflicts
   - Doctor availability
   - Status transitions
   - Cancellations

4. **Consultation Flow:**
   - End-to-end patient journey
   - Prescription creation
   - Lab ordering
   - Data persistence

5. **Integration Testing:**
   - PMS product linking
   - Billing integration
   - Stock updates
   - User synchronization

6. **Performance Testing:**
   - Page load times
   - Database query optimization
   - Concurrent user handling

---

## **13. DOCUMENTATION REQUIREMENTS**

### **Technical Documentation:**
- Database schema with ERD
- API documentation
- Installation guide
- Configuration manual
- Deployment guide

### **User Documentation:**
- User manual for each role
- Video tutorials
- Workflow guides
- FAQ section
- Troubleshooting guide

### **Admin Documentation:**
- System administration guide
- Backup and recovery procedures
- Security best practices
- Update and maintenance guide

---

## **14. SAMPLE SCENARIOS**

### **Scenario 1: New Patient Visit**
- **Actor:** Reception, Nurse, Doctor, Pharmacist, Cashier
- **Steps:**
  1. Reception: Register patient → Book appointment
  2. Patient arrives → Check-in
  3. Nurse: Record vitals → Send to doctor
  4. Doctor: Consult → Diagnose → Prescribe → Order labs
  5. Cashier: Generate bill → Collect payment
  6. Pharmacist: Dispense medicines
  7. Reception: Schedule follow-up

### **Scenario 2: Follow-up Visit**
- **Actor:** Reception, Doctor, Cashier
- **Steps:**
  1. Reception: Search patient → Book follow-up appointment
  2. Doctor: Review previous consultation → Update treatment
  3. Doctor: Adjust prescription
  4. Cashier: Minimal billing for consultation only

### **Scenario 3: Lab Test Only**
- **Actor:** Reception, Doctor, Lab Tech, Cashier
- **Steps:**
  1. Reception: Check-in patient
  2. Doctor: Order lab tests only (no prescription)
  3. Nurse: Collect sample
  4. Lab Tech: Process → Enter results
  5. Doctor: Review results → Communicate with patient
  6. Cashier: Bill lab charges

---

## **15. SUCCESS METRICS**

### **KPIs to Track:**
- Patient registration rate
- Appointment fill rate
- Average consultation time
- Prescription accuracy
- Revenue per consultation
- Patient satisfaction score
- System uptime
- Report generation time
- User adoption rate per role

---

## **16. DELIVERABLES**

1. **Source Code:**
   - Complete CodeIgniter application
   - SQL schema files
   - Configuration templates

2. **Database:**
   - Complete database with sample data
   - Migration scripts
   - Backup procedures

3. **Documentation:**
   - Technical documentation
   - User manuals
   - API documentation
   - Video tutorials

4. **Testing:**
   - Test cases document
   - Test results report
   - Bug fix log

5. **Deployment:**
   - Installation package
   - Deployment guide
   - Server requirements document

---

## **17. SUPPORT & MAINTENANCE**

### **Post-Launch Support:**
- Bug fixing (30 days)
- User training sessions
- Technical support
- Feature enhancements
- Regular updates
- Security patches

---

## **18. QUICK START COMMANDS**

### **To Begin Implementation:**

```bash
# 1. Create database tables
mysql -u root pms < clinic_schema.sql

# 2. Set up CodeIgniter structure
cd /opt/lampp/htdocs/pms/application
mkdir -p controllers/clinic models/clinic views/clinic libraries/clinic

# 3. Configure routes
# Edit application/config/routes.php
# Add: $route['clinic'] = 'clinic_dashboard';

# 4. Create first controller
# Create: application/controllers/Clinic_dashboard.php

# 5. Test access
# Visit: http://localhost/pms/clinic
```

---

**This comprehensive specification covers all aspects of building a fully integrated Clinic Management System. Use this as your development blueprint, adjusting features based on specific clinic requirements and budget constraints.**

---

## **APPENDIX A: Password Hash Information**

**Current PMS Password Hashing:**
- Method: MD5 with prefix "gef"
- Example: `md5("gef" . $password)`
- For clinic module, maintain same hashing for consistency

**Test Login Credentials:**
- Email: `branatech@gmail.com`
- Password: `admin123`
- Hash: `MD5('gefadmin123')`

---

## **APPENDIX B: Existing PMS Tables to Reference**

**Key Tables:**
- `users` - User information
- `user_login` - Authentication
- `product` - Medicines/products inventory
- `customer` - Can be linked to patients
- `invoice` - Billing system
- `purchase` - Inventory management

**Integration Points:**
- Link `patients.customer_id` → `customer.customer_id`
- Link `prescription_details.product_id` → `product.product_id`
- Extend `user_login` with `role` column for clinic roles
- Share invoice/payment tables or create clinic-specific ones

---

**End of Specification Document**

