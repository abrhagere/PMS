-- Verification Script for Clinic Module Permissions
-- Run this to confirm everything is set up correctly

SELECT '========================================' as '';
SELECT 'VERIFICATION REPORT' as title;
SELECT '========================================' as '';

-- 1. Check Parent Module
SELECT 'Step 1: Parent Module (Clinic Management)' as info;
SELECT id, name, directory, status, 
       CASE WHEN status = 1 THEN '✓ Active' ELSE '✗ Inactive' END as status_text
FROM module 
WHERE directory = 'clinic';

SELECT '========================================' as '';

-- 2. Check Sub-Modules
SELECT 'Step 2: Clinic Sub-Modules' as info;
SELECT sm.id, sm.mid as parent_id, sm.name, sm.directory, sm.status,
       CASE WHEN sm.status = 1 THEN '✓ Active' ELSE '✗ Inactive' END as status_text,
       m.name as parent_module_name
FROM sub_module sm
JOIN module m ON sm.mid = m.id
WHERE sm.mid = (SELECT id FROM module WHERE directory = 'clinic' LIMIT 1)
ORDER BY sm.id;

SELECT '========================================' as '';

-- 3. Check if permissions are assigned
SELECT 'Step 3: Current Permission Assignments' as info;
SELECT 
    sr.id as role_id,
    sr.type as role_name,
    COUNT(rp.id) as total_permissions,
    SUM(CASE WHEN sm.mid = 24 THEN 1 ELSE 0 END) as clinic_permissions
FROM sec_role sr
LEFT JOIN role_permission rp ON sr.id = rp.role_id
LEFT JOIN sub_module sm ON rp.fk_module_id = sm.id
WHERE sr.id IN (1, 8, 14, 15, 16, 17)
GROUP BY sr.id, sr.type
ORDER BY sr.id;

SELECT '========================================' as '';

-- 4. Detailed clinic permissions by role
SELECT 'Step 4: Detailed Clinic Permissions' as info;
SELECT 
    sr.type as role_name,
    sm.name as module_name,
    CASE WHEN rp.create = 1 THEN '✓' ELSE '✗' END as C,
    CASE WHEN rp.read = 1 THEN '✓' ELSE '✗' END as R,
    CASE WHEN rp.update = 1 THEN '✓' ELSE '✗' END as U,
    CASE WHEN rp.delete = 1 THEN '✓' ELSE '✗' END as D
FROM role_permission rp
JOIN sec_role sr ON rp.role_id = sr.id
JOIN sub_module sm ON rp.fk_module_id = sm.id
WHERE sm.mid = 24
AND sr.id IN (1, 8, 14, 15, 16, 17)
ORDER BY sr.id, sm.id;

SELECT '========================================' as '';

-- 5. Check what will appear in the permission form
SELECT 'Step 5: Modules that will appear in Permission Form' as info;
SELECT id, name, directory, 
       (SELECT COUNT(*) FROM sub_module WHERE mid = module.id) as sub_module_count
FROM module 
WHERE status = 1
ORDER BY id;

SELECT '========================================' as '';
SELECT 'VERIFICATION COMPLETE!' as status;
SELECT '========================================' as '';
SELECT 'Expected Result:' as note1;
SELECT '- Parent module "Clinic Management" should be listed' as note2;
SELECT '- It should show 7 sub-modules as checkboxes' as note3;
SELECT '- If not visible in web UI, try clearing browser cache and reload' as note4;











