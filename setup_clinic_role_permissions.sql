-- Setup Clinic Role Permissions
-- Only for: Reception, Admin, Lab, Doctor, and Cashier roles

-- Display current role setup
SELECT '========================================' as '';
SELECT 'Current Roles in System:' as info;
SELECT id, type FROM sec_role ORDER BY id;
SELECT '========================================' as '';

-- Get role IDs for clinic-specific roles
SET @admin_role_id = 1;  -- Assuming admin is role_id 1
SET @doctor_role_id = (SELECT id FROM sec_role WHERE LOWER(type) = 'doctor' LIMIT 1);
SET @nurse_role_id = (SELECT id FROM sec_role WHERE LOWER(type) = 'nurse' LIMIT 1);
SET @reception_role_id = (SELECT id FROM sec_role WHERE LOWER(type) = 'reception' LIMIT 1);
SET @lab_role_id = (SELECT id FROM sec_role WHERE LOWER(type) IN ('lab technician', 'lab') LIMIT 1);
SET @cashier_role_id = (SELECT id FROM sec_role WHERE LOWER(type) = 'cashier' LIMIT 1);

-- Get module IDs for clinic modules
SET @patient_module_id = (SELECT id FROM module WHERE directory = 'patients' LIMIT 1);
SET @appointment_module_id = (SELECT id FROM module WHERE directory = 'appointments' LIMIT 1);
SET @consultation_module_id = (SELECT id FROM module WHERE directory = 'consultations' LIMIT 1);
SET @vitals_module_id = (SELECT id FROM module WHERE directory = 'vitals' LIMIT 1);
SET @prescription_module_id = (SELECT id FROM module WHERE directory = 'prescriptions' LIMIT 1);
SET @lab_module_id = (SELECT id FROM module WHERE directory = 'lab_orders' LIMIT 1);
SET @clinic_dashboard_module_id = (SELECT id FROM module WHERE directory = 'clinic_dashboard' LIMIT 1);

-- Display role IDs
SELECT '========================================' as '';
SELECT 'Role IDs identified:' as info;
SELECT @admin_role_id as admin_role, 
       @doctor_role_id as doctor_role, 
       @reception_role_id as reception_role, 
       @lab_role_id as lab_role, 
       @cashier_role_id as cashier_role;

-- ============================================
-- DOCTOR ROLE PERMISSIONS
-- ============================================
DELETE FROM role_permission WHERE role_id = @doctor_role_id AND fk_module_id IN (@patient_module_id, @appointment_module_id, @consultation_module_id, @vitals_module_id, @prescription_module_id, @lab_module_id, @clinic_dashboard_module_id);

INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(@patient_module_id, @doctor_role_id, 1, 1, 1, 0),
(@appointment_module_id, @doctor_role_id, 1, 1, 1, 1),
(@consultation_module_id, @doctor_role_id, 1, 1, 1, 0),
(@vitals_module_id, @doctor_role_id, 0, 1, 0, 0),
(@prescription_module_id, @doctor_role_id, 1, 1, 1, 0),
(@lab_module_id, @doctor_role_id, 1, 1, 1, 0),
(@clinic_dashboard_module_id, @doctor_role_id, 0, 1, 0, 0);

SELECT 'Doctor permissions configured' as status;

-- ============================================
-- RECEPTION ROLE PERMISSIONS
-- ============================================
DELETE FROM role_permission WHERE role_id = @reception_role_id AND fk_module_id IN (@patient_module_id, @appointment_module_id, @consultation_module_id, @vitals_module_id, @prescription_module_id, @lab_module_id, @clinic_dashboard_module_id);

INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(@patient_module_id, @reception_role_id, 1, 1, 1, 0),
(@appointment_module_id, @reception_role_id, 1, 1, 1, 1),
(@consultation_module_id, @reception_role_id, 0, 1, 0, 0),
(@vitals_module_id, @reception_role_id, 0, 1, 0, 0),
(@prescription_module_id, @reception_role_id, 0, 1, 0, 0),
(@lab_module_id, @reception_role_id, 0, 1, 0, 0),
(@clinic_dashboard_module_id, @reception_role_id, 0, 1, 0, 0);

SELECT 'Reception permissions configured' as status;

-- ============================================
-- LAB TECHNICIAN ROLE PERMISSIONS
-- ============================================
DELETE FROM role_permission WHERE role_id = @lab_role_id AND fk_module_id IN (@patient_module_id, @appointment_module_id, @consultation_module_id, @vitals_module_id, @prescription_module_id, @lab_module_id, @clinic_dashboard_module_id);

INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(@patient_module_id, @lab_role_id, 0, 1, 0, 0),
(@appointment_module_id, @lab_role_id, 0, 1, 0, 0),
(@consultation_module_id, @lab_role_id, 0, 1, 0, 0),
(@vitals_module_id, @lab_role_id, 0, 1, 0, 0),
(@prescription_module_id, @lab_role_id, 0, 1, 0, 0),
(@lab_module_id, @lab_role_id, 1, 1, 1, 0),
(@clinic_dashboard_module_id, @lab_role_id, 0, 1, 0, 0);

SELECT 'Lab Technician permissions configured' as status;

-- ============================================
-- CASHIER ROLE PERMISSIONS
-- ============================================
DELETE FROM role_permission WHERE role_id = @cashier_role_id AND fk_module_id IN (@patient_module_id, @appointment_module_id, @consultation_module_id, @vitals_module_id, @prescription_module_id, @lab_module_id, @clinic_dashboard_module_id);

INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(@patient_module_id, @cashier_role_id, 0, 1, 0, 0),
(@appointment_module_id, @cashier_role_id, 0, 1, 0, 0),
(@consultation_module_id, @cashier_role_id, 0, 1, 0, 0),
(@vitals_module_id, @cashier_role_id, 0, 1, 0, 0),
(@prescription_module_id, @cashier_role_id, 0, 1, 0, 0),
(@lab_module_id, @cashier_role_id, 0, 1, 0, 0),
(@clinic_dashboard_module_id, @cashier_role_id, 0, 1, 0, 0);

SELECT 'Cashier permissions configured' as status;

-- ============================================
-- SUMMARY
-- ============================================
SELECT '========================================' as '';
SELECT 'Permission Setup Complete!' as status;
SELECT '========================================' as '';

SELECT 'Clinic menu will ONLY be visible to users with these roles:' as info;
SELECT type as role_name, id as role_id 
FROM sec_role 
WHERE LOWER(type) IN ('reception', 'doctor', 'lab technician', 'lab', 'cashier') OR id = 1
ORDER BY id;

SELECT '========================================' as '';
SELECT 'All Clinic Permissions Summary:' as info;

SELECT 
    r.id as role_id,
    r.type as role_name,
    m.name as module_name,
    CASE WHEN rp.create = 1 THEN '✓' ELSE '✗' END as C,
    CASE WHEN rp.read = 1 THEN '✓' ELSE '✗' END as R,
    CASE WHEN rp.update = 1 THEN '✓' ELSE '✗' END as U,
    CASE WHEN rp.delete = 1 THEN '✓' ELSE '✗' END as D
FROM role_permission rp
JOIN module m ON rp.fk_module_id = m.id
JOIN sec_role r ON rp.role_id = r.id
WHERE m.directory IN ('patients', 'appointments', 'consultations', 'vitals', 'prescriptions', 'lab_orders', 'clinic_dashboard')
AND r.id IN (@admin_role_id, @doctor_role_id, @reception_role_id, @lab_role_id, @cashier_role_id)
ORDER BY r.id, m.id;

SELECT '========================================' as '';
SELECT 'Notes:' as '';
SELECT '- Admin (role_id=1) has full access to everything automatically' as note1;
SELECT '- Users with other roles will NOT see the clinic menu' as note2;
SELECT '- To add a user to a role, use: INSERT INTO sec_userrole (user_id, roleid, createby, createdate) VALUES (USER_ID, ROLE_ID, 1, NOW())' as note3;











