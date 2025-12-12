# Clinic Management Permission Setup Guide

## Overview

This guide explains how to set up and manage role-based permissions for the clinic management system.

## Modules Added

The following clinic modules have been added to the system:

| Module ID | Module Name | Directory | Description |
|-----------|-------------|-----------|-------------|
| 17 | Patient Management | patients | Manage patient records, registration, and profiles |
| 18 | Appointments | appointments | Manage patient appointments and scheduling |
| 19 | Consultations | consultations | Manage doctor consultations and medical records |
| 20 | Vitals | vitals | Record and manage patient vital signs |
| 21 | Prescriptions | prescriptions | Create and manage prescriptions |
| 22 | Lab Orders | lab_orders | Manage laboratory orders and results |
| 23 | Clinic Dashboard | clinic_dashboard | View clinic statistics and overview |

## Permission Structure

Each module has 4 types of permissions:

- **Create** - Add new records
- **Read** - View/list records
- **Update** - Edit existing records
- **Delete** - Remove records

## Managing Permissions

### Option 1: Through Web Interface

1. Log in as Administrator
2. Navigate to **Settings → Role & Permission**
3. Click on **Add Role Permission** or edit existing role
4. Check the appropriate permissions for each clinic module:
   - ☑ Create
   - ☑ Read
   - ☑ Update
   - ☑ Delete

### Option 2: Through SQL (Manual)

Use the SQL scripts provided below to assign permissions to specific roles.

## SQL Scripts for Common Roles

### 1. Doctor Role (Full Access)

```sql
-- Assuming role_id = 2 for Doctor
INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(17, 2, 1, 1, 1, 0),  -- Patients: Create, Read, Update (no delete)
(18, 2, 1, 1, 1, 1),  -- Appointments: Full access
(19, 2, 1, 1, 1, 0),  -- Consultations: Create, Read, Update
(20, 2, 0, 1, 0, 0),  -- Vitals: Read only
(21, 2, 1, 1, 1, 0),  -- Prescriptions: Create, Read, Update
(22, 2, 1, 1, 1, 0),  -- Lab Orders: Create, Read, Update
(23, 2, 0, 1, 0, 0);  -- Dashboard: Read only
```

### 2. Nurse Role (Limited Access)

```sql
-- Assuming role_id = 3 for Nurse
INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(17, 3, 0, 1, 0, 0),  -- Patients: Read only
(18, 3, 1, 1, 1, 0),  -- Appointments: Create, Read, Update
(19, 3, 0, 1, 0, 0),  -- Consultations: Read only
(20, 3, 1, 1, 1, 0),  -- Vitals: Create, Read, Update
(21, 3, 0, 1, 0, 0),  -- Prescriptions: Read only
(22, 3, 0, 1, 0, 0),  -- Lab Orders: Read only
(23, 3, 0, 1, 0, 0);  -- Dashboard: Read only
```

### 3. Receptionist Role (Front Desk)

```sql
-- Assuming role_id = 4 for Receptionist
INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(17, 4, 1, 1, 1, 0),  -- Patients: Create, Read, Update
(18, 4, 1, 1, 1, 1),  -- Appointments: Full access
(19, 4, 0, 1, 0, 0),  -- Consultations: Read only
(20, 4, 0, 1, 0, 0),  -- Vitals: Read only
(21, 4, 0, 1, 0, 0),  -- Prescriptions: Read only
(22, 4, 0, 1, 0, 0),  -- Lab Orders: Read only
(23, 4, 0, 1, 0, 0);  -- Dashboard: Read only
```

### 4. Lab Technician Role

```sql
-- Assuming role_id = 5 for Lab Technician
INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(17, 5, 0, 1, 0, 0),  -- Patients: Read only
(18, 5, 0, 1, 0, 0),  -- Appointments: Read only
(19, 5, 0, 1, 0, 0),  -- Consultations: Read only
(20, 5, 0, 1, 0, 0),  -- Vitals: Read only
(21, 5, 0, 1, 0, 0),  -- Prescriptions: Read only
(22, 5, 1, 1, 1, 0),  -- Lab Orders: Create, Read, Update
(23, 5, 0, 1, 0, 0);  -- Dashboard: Read only
```

## Checking Current Roles

To see what roles exist in your system:

```sql
SELECT * FROM sec_userrole;
```

## Checking Current Permissions

To see permissions for a specific role:

```sql
SELECT 
    rp.id,
    rp.role_id,
    m.name as module_name,
    m.directory,
    rp.create,
    rp.read,
    rp.update,
    rp.delete
FROM role_permission rp
JOIN module m ON rp.fk_module_id = m.id
WHERE rp.role_id = 1  -- Change to your role ID
ORDER BY m.id;
```

## Menu Visibility

The clinic menu will only appear to users who have access to at least one clinic module. Sub-menu items will only show if the user has the corresponding permissions.

### Examples:

- **"Add New Patient"** - Only visible if user has `create` permission for `patients`
- **"Patient List"** - Only visible if user has `read` permission for `patients`
- **"Edit Patient"** - Action only allowed if user has `update` permission for `patients`

## Testing Permissions

1. Create a test user with specific role
2. Log in as that user
3. Verify:
   - Menu items appear/disappear based on permissions
   - Direct URL access is blocked for unauthorized actions
   - Appropriate error messages appear when access is denied

## Troubleshooting

### Menu Not Showing

1. Check if user is logged in: `$this->session->userdata('user_id')`
2. Check if role has permissions: Query `role_permission` table
3. Check permission library is loaded: `$this->load->library('permission1')`

### Access Denied Messages

- Message: "You do not have permission to access"
- Solution: Add the required permission through Role & Permission management

### Module Not Found

- Check if module exists in `module` table
- Verify `directory` field matches controller name (lowercase)

## Security Notes

1. **Never** give regular users admin access (`user_type = 1`)
2. Always use `$this->permission1->method()` checks in controllers
3. Use `$this->permission1->module()->access()` checks in views
4. Restrict delete permissions carefully
5. Log all sensitive actions to `accesslog` table

## Quick Setup Script

To quickly set up all roles, run:

```bash
/opt/lampp/bin/mysql -u root pms < /opt/lampp/htdocs/pms/setup_all_clinic_permissions.sql
```

## Support

For issues or questions:
- Check application logs: `/opt/lampp/htdocs/pms/application/logs/`
- Review permissions: Settings → Role & Permission
- Check user role assignment: Settings → User Management











