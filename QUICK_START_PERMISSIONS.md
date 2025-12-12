# Quick Start: Clinic Permissions Setup

## 🚀 5-Minute Setup Guide

### Step 1: Verify Installation
```bash
/opt/lampp/bin/mysql -u root -e "USE pms; SELECT id, name FROM module WHERE id >= 17;"
```

**Expected output:** 7 clinic modules (IDs 17-23)

---

### Step 2: Access Permission Management

1. Log in to PMS as **Administrator**
2. Navigate to: **Settings → Role & Permission**
3. You should see the permission management interface

---

### Step 3: Set Up Permissions

#### Option A: Web Interface (Recommended for beginners)

1. Click **"Add Role Permission"**
2. Select **Role** from dropdown
3. Check boxes for each clinic module:
   - Patient Management
   - Appointments
   - Consultations
   - Vitals
   - Prescriptions
   - Lab Orders
   - Clinic Dashboard
4. For each module, check:
   - ☑ **Create** - Can add new records
   - ☑ **Read** - Can view records  
   - ☑ **Update** - Can edit records
   - ☑ **Delete** - Can remove records (use carefully!)
5. Click **Save**

#### Option B: Automated SQL Script (Faster)

```bash
# Run the automated setup
/opt/lampp/bin/mysql -u root pms < /opt/lampp/htdocs/pms/setup_all_clinic_permissions.sql
```

This automatically sets up permissions for:
- Admin (full access)
- Doctor (role_id = 2)
- Nurse (role_id = 3)
- Receptionist (role_id = 4)
- Lab Technician (role_id = 5)

---

### Step 4: Test the Menu

1. **Refresh** your browser (or log out and log back in)
2. Look at the left sidebar
3. You should see: **🏥 Clinic Management**
4. Click to expand and see sub-menus

---

### Step 5: Create Test Users (Optional)

1. Go to **Settings → User Management**
2. Create a test user with specific role
3. Log in as that user
4. Verify menu items match their permissions

---

## 🎯 Common Scenarios

### Scenario 1: Give Doctor Full Access

```sql
-- Doctor = role_id 2
INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(17, 2, 1, 1, 1, 0),  -- Patients
(18, 2, 1, 1, 1, 1),  -- Appointments
(19, 2, 1, 1, 1, 0),  -- Consultations
(21, 2, 1, 1, 1, 0);  -- Prescriptions
```

### Scenario 2: Give Nurse Limited Access

```sql
-- Nurse = role_id 3
INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(17, 3, 0, 1, 0, 0),  -- Patients: Read only
(18, 3, 1, 1, 1, 0),  -- Appointments: Create, Read, Update
(20, 3, 1, 1, 1, 0);  -- Vitals: Create, Read, Update
```

### Scenario 3: Give Receptionist Front Desk Access

```sql
-- Receptionist = role_id 4
INSERT INTO `role_permission` (`fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(17, 4, 1, 1, 1, 0),  -- Patients: Register and update
(18, 4, 1, 1, 1, 1);  -- Appointments: Full access
```

---

## 🔍 Verify Permissions

### Check What Permissions a Role Has

```sql
SELECT 
    m.name as module,
    rp.create,
    rp.read,
    rp.update,
    rp.delete
FROM role_permission rp
JOIN module m ON rp.fk_module_id = m.id
WHERE rp.role_id = 2  -- Change to your role ID
AND m.id >= 17;       -- Clinic modules only
```

### Check What Roles Exist

```sql
SELECT id, type as role_name FROM sec_userrole;
```

---

## ⚠️ Important Notes

1. **Admin users (user_type = 1)** have access to EVERYTHING automatically
2. **Changes take effect immediately** - users may need to refresh or re-login
3. **Delete permissions** should be given carefully
4. Module access must be granted before method permissions work

---

## 🆘 Quick Troubleshooting

| Problem | Solution |
|---------|----------|
| Menu not showing | User has no permissions for ANY clinic module |
| "Access denied" error | User lacks specific permission (create/read/update/delete) |
| Can see menu but not sub-items | User has module access but no method permissions |
| Everything visible | User is logged in as admin (user_type = 1) |

---

## 📚 Need More Help?

- **Detailed Guide:** See `CLINIC_PERMISSION_SETUP.md`
- **Implementation Details:** See `CLINIC_MENU_IMPLEMENTATION.md`
- **System Setup:** See `INSTALLATION_GUIDE.md`

---

## ✅ Checklist

- [ ] Verified 7 clinic modules exist in database
- [ ] Accessed Role & Permission management page
- [ ] Set up permissions for at least one role
- [ ] Tested menu visibility as admin
- [ ] Created test user with limited permissions
- [ ] Verified access control is working

---

**Quick Reference:**

```bash
# View modules
/opt/lampp/bin/mysql -u root -e "USE pms; SELECT * FROM module WHERE id >= 17;"

# View permissions for role 2
/opt/lampp/bin/mysql -u root -e "USE pms; SELECT * FROM role_permission WHERE role_id = 2;"

# Setup all permissions
/opt/lampp/bin/mysql -u root pms < /opt/lampp/htdocs/pms/setup_all_clinic_permissions.sql
```

**That's it! You're ready to use role-based clinic management! 🎉**











