-- ============================================
-- CLINIC MANAGEMENT SYSTEM - DATABASE TABLES
-- ============================================
-- This script creates all tables needed for the clinic management system
-- Patients table already exists, so we'll check and modify if needed

USE pms;

-- Check if patients table has all required fields
-- Add missing columns if they don't exist
SET @dbname = DATABASE();
SET @tablename = 'patients';
SET @columnname = 'middle_name';
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS
   WHERE TABLE_SCHEMA = @dbname AND TABLE_NAME = @tablename AND COLUMN_NAME = @columnname) > 0,
  'SELECT 1',
  CONCAT('ALTER TABLE ', @tablename, ' ADD COLUMN middle_name VARCHAR(100) AFTER first_name;')
));
PREPARE statement FROM @preparedStatement;
EXECUTE statement;
DEALLOCATE PREPARE statement;

-- Add other missing patient fields
ALTER TABLE patients 
ADD COLUMN IF NOT EXISTS patient_type ENUM('Regular', 'VIP', 'Emergency', 'Insurance') DEFAULT 'Regular' AFTER gender,
ADD COLUMN IF NOT EXISTS marital_status VARCHAR(20) AFTER patient_type,
ADD COLUMN IF NOT EXISTS country VARCHAR(50) AFTER marital_status,
ADD COLUMN IF NOT EXISTS region VARCHAR(50) AFTER country,
ADD COLUMN IF NOT EXISTS zone VARCHAR(50) AFTER region,
ADD COLUMN IF NOT EXISTS woreda VARCHAR(50) AFTER zone,
ADD COLUMN IF NOT EXISTS city VARCHAR(50) AFTER woreda,
ADD COLUMN IF NOT EXISTS kebele VARCHAR(50) AFTER city,
ADD COLUMN IF NOT EXISTS house_number VARCHAR(50) AFTER kebele;

-- ============================================
-- APPOINTMENTS TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_number VARCHAR(20) UNIQUE,
    patient_id INT NOT NULL,
    doctor_id INT,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    duration INT DEFAULT 30,
    appointment_type ENUM('Consultation', 'Follow-up', 'Emergency', 'Check-up') DEFAULT 'Consultation',
    status ENUM('Scheduled', 'Confirmed', 'In-Progress', 'Completed', 'Cancelled', 'No-Show') DEFAULT 'Scheduled',
    symptoms TEXT,
    notes TEXT,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES users(user_id) ON DELETE SET NULL,
    INDEX idx_appointment_date (appointment_date),
    INDEX idx_doctor_date (doctor_id, appointment_date),
    INDEX idx_patient (patient_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ============================================
-- PATIENT VITALS TABLE  
-- ============================================
CREATE TABLE IF NOT EXISTS patient_vitals (
    vital_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    appointment_id INT,
    recorded_by INT,
    temperature DECIMAL(4,1),
    blood_pressure VARCHAR(10),
    pulse INT,
    respiratory_rate INT,
    weight DECIMAL(5,2),
    height DECIMAL(5,2),
    bmi DECIMAL(4,2),
    oxygen_saturation INT,
    blood_sugar DECIMAL(5,2),
    notes TEXT,
    recorded_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id) ON DELETE SET NULL,
    FOREIGN KEY (recorded_by) REFERENCES users(user_id) ON DELETE SET NULL,
    INDEX idx_patient_date (patient_id, recorded_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ============================================
-- CONSULTATIONS TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS consultations (
    consultation_id INT PRIMARY KEY AUTO_INCREMENT,
    consultation_number VARCHAR(20) UNIQUE,
    patient_id INT NOT NULL,
    appointment_id INT,
    doctor_id INT NOT NULL,
    consultation_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    chief_complaint TEXT,
    history_present_illness TEXT,
    physical_examination TEXT,
    diagnosis TEXT,
    treatment_plan TEXT,
    follow_up_date DATE,
    follow_up_instructions TEXT,
    status ENUM('In-Progress', 'Completed', 'Follow-up-Required') DEFAULT 'In-Progress',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id) ON DELETE SET NULL,
    FOREIGN KEY (doctor_id) REFERENCES users(user_id) ON DELETE RESTRICT,
    INDEX idx_patient (patient_id),
    INDEX idx_doctor_date (doctor_id, consultation_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ============================================
-- PRESCRIPTIONS TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    prescription_number VARCHAR(20) UNIQUE,
    patient_id INT NOT NULL,
    consultation_id INT,
    doctor_id INT NOT NULL,
    prescription_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    diagnosis TEXT,
    instructions TEXT,
    status ENUM('Pending', 'Dispensed', 'Partially-Dispensed', 'Cancelled') DEFAULT 'Pending',
    dispensed_by INT,
    dispensed_date DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (consultation_id) REFERENCES consultations(consultation_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES users(user_id) ON DELETE RESTRICT,
    INDEX idx_patient (patient_id),
    INDEX idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ============================================
-- PRESCRIPTION DETAILS TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS prescription_details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    prescription_id INT NOT NULL,
    product_id INT,
    medicine_name VARCHAR(200),
    dosage VARCHAR(100),
    frequency VARCHAR(100),
    duration VARCHAR(50),
    quantity INT,
    instructions TEXT,
    FOREIGN KEY (prescription_id) REFERENCES prescriptions(prescription_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES product_information(product_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ============================================
-- LAB ORDERS TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS lab_orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_number VARCHAR(20) UNIQUE,
    patient_id INT NOT NULL,
    consultation_id INT,
    doctor_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Pending', 'Sample-Collected', 'In-Progress', 'Completed', 'Cancelled') DEFAULT 'Pending',
    priority ENUM('Normal', 'Urgent', 'STAT') DEFAULT 'Normal',
    clinical_notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (consultation_id) REFERENCES consultations(consultation_id) ON DELETE SET NULL,
    FOREIGN KEY (doctor_id) REFERENCES users(user_id) ON DELETE RESTRICT,
    INDEX idx_patient (patient_id),
    INDEX idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ============================================
-- LAB ORDER DETAILS TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS lab_order_details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    test_name VARCHAR(200) NOT NULL,
    test_category VARCHAR(100),
    sample_type VARCHAR(50),
    result TEXT,
    result_date DATETIME,
    normal_range VARCHAR(100),
    unit VARCHAR(50),
    remarks TEXT,
    performed_by INT,
    FOREIGN KEY (order_id) REFERENCES lab_orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (performed_by) REFERENCES users(user_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ============================================
-- DOCTOR PROFILES TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS doctor_profiles (
    profile_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE NOT NULL,
    specialization VARCHAR(100),
    license_number VARCHAR(50),
    qualification TEXT,
    experience_years INT,
    consultation_fee DECIMAL(10,2),
    room_number VARCHAR(20),
    bio TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ============================================
-- DOCTOR SCHEDULES TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS doctor_schedules (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_id INT NOT NULL,
    day_of_week TINYINT NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    slot_duration INT DEFAULT 30,
    max_appointments INT DEFAULT 20,
    status TINYINT DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (doctor_id) REFERENCES users(user_id) ON DELETE CASCADE,
    INDEX idx_doctor_day (doctor_id, day_of_week)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Display results
SELECT '========================================' as '';
SELECT 'CLINIC TABLES CREATED SUCCESSFULLY!' as status;
SELECT '========================================' as '';

-- Show created tables
SELECT 'Tables created/verified:' as info;
SELECT TABLE_NAME, TABLE_ROWS, 
       ROUND(DATA_LENGTH/1024, 2) as 'Size_KB'
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_SCHEMA = 'pms' 
AND TABLE_NAME IN ('patients', 'appointments', 'patient_vitals', 'consultations', 
                    'prescriptions', 'prescription_details', 'lab_orders', 
                    'lab_order_details', 'doctor_profiles', 'doctor_schedules')
ORDER BY TABLE_NAME;

SELECT '========================================' as '';
SELECT 'Next Steps:' as note;
SELECT '1. Run controller and model generation scripts' as step1;
SELECT '2. Create view files for all modules' as step2;
SELECT '3. Test each module functionality' as step3;











