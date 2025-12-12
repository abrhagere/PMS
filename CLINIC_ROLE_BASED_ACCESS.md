# Clinic Management - Role-Based Access Control

## ✅ Implementation Complete

The clinic management menu is now **ONLY visible** to users with specific roles:

---

## 🔐 Allowed Roles

The clinic menu will **ONLY** appear for users assigned to these roles:

| Role | Role ID | Access Level |
|------|---------|--------------|
| **Admin** | 1 | Full access to everything |
| **Reception** | 8, 9, 10, 11, 12 | Patient registration, appointments |
| **Doctor** | 13 | Full clinical access |
| **Lab Technician** | 15 | Lab orders and results |
| **Cashier** | 16 | View-only for billing |

**Note:** Users with ANY other roles (Sales, Manager, etc.) will **NOT** see the clinic menu.

---

## 🎯 Permission Matrix

### Doctor (Full Clinical Access)
| Module | Create | Read | Update | Delete |
|--------|--------|------|--------|--------|
| Patients | ✅ | ✅ | ✅ | ❌ |
| Appointments | ✅ | ✅ | ✅ | ✅ |
| Consultations | ✅ | ✅ | ✅ | ❌ |
| Vitals | ❌ | ✅ | ❌ | ❌ |
| Prescriptions | ✅ | ✅ | ✅ | ❌ |
| Lab Orders | ✅ | ✅ | ✅ | ❌ |
| Dashboard | ❌ | ✅ | ❌ | ❌ |

### Reception (Front Desk)
| Module | Create | Read | Update | Delete |
|--------|--------|------|--------|--------|
| Patients | ✅ | ✅ | ✅ | ❌ |
| Appointments | ✅ | ✅ | ✅ | ✅ |
| Consultations | ❌ | ✅ | ❌ | ❌ |
| Vitals | ❌ | ✅ | ❌ | ❌ |
| Prescriptions | ❌ | ✅ | ❌ | ❌ |
| Lab Orders | ❌ | ✅ | ❌ | ❌ |
| Dashboard | ❌ | ✅ | ❌ | ❌ |

### Lab Technician
| Module | Create | Read | Update | Delete |
|--------|--------|------|--------|--------|
| Patients | ❌ | ✅ | ❌ | ❌ |
| Appointments | ❌ | ✅ | ❌ | ❌ |
| Consultations | ❌ | ✅ | ❌ | ❌ |
| Vitals | ❌ | ✅ | ❌ | ❌ |
| Prescriptions | ❌ | ✅ | ❌ | ❌ |
| **Lab Orders** | ✅ | ✅ | ✅ | ❌ |
| Dashboard | ❌ | ✅ | ❌ | ❌ |

### Cashier (Billing/View Only)
| Module | Create | Read | Update | Delete |
|--------|--------|------|--------|--------|
| All Modules | ❌ | ✅ | ❌ | ❌ |

---

## 🔧 How It Works

### 1. **Role Check Function**
A new helper function `has_clinic_role()` checks:
- ✅ If user is admin (automatic access)
- ✅ If user's role is in allowed list (Reception, Doctor, Lab, Cashier)
- ❌ Blocks all other roles from seeing the menu

### 2. **Session Storage**
User roles are stored in session during login:
```php
'role_ids' => json_encode([8, 13])  // Example: Reception + Doctor
```

### 3. **Menu Visibility**
```php
if(has_clinic_role() && has_permissions()) {
    // Show clinic menu
}
```

### 4. **Database Lookup**
The function queries `sec_role` table to verify role names match the allowed list.

---

## 🚀 Quick Setup

### Step 1: Verify Roles Exist
```bash
/opt/lampp/bin/mysql -u root -e "USE pms; SELECT id, type FROM sec_role WHERE LOWER(type) IN ('reception', 'doctor', 'lab technician', 'lab', 'cashier');"
```

### Step 2: Assign Permissions (Automated)
```bash
/opt/lampp/bin/mysql -u root pms < /opt/lampp/htdocs/pms/setup_clinic_role_permissions.sql
```

### Step 3: Assign User to Role
```sql
-- Example: Assign user ID 5 to Doctor role (role_id 13)
INSERT INTO sec_userrole (user_id, roleid, createby, createdate) 
VALUES (5, 13, 1, NOW());
```

### Step 4: Test
1. Login as user with allowed role → See clinic menu ✅
2. Login as user with other role → No clinic menu ❌

---

## 👥 Managing User Roles

### Check User's Current Roles
```sql
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    sr.id as role_id,
    sr.type as role_name
FROM users u
JOIN sec_userrole sur ON u.user_id = sur.user_id
JOIN sec_role sr ON sur.roleid = sr.id
WHERE u.user_id = YOUR_USER_ID;
```

### Add User to Clinic Role
```sql
-- Add to Doctor role
INSERT INTO sec_userrole (user_id, roleid, createby, createdate) 
VALUES (YOUR_USER_ID, 13, 1, NOW());

-- Add to Reception role
INSERT INTO sec_userrole (user_id, roleid, createby, createdate) 
VALUES (YOUR_USER_ID, 8, 1, NOW());

-- Add to Lab role
INSERT INTO sec_userrole (user_id, roleid, createby, createdate) 
VALUES (YOUR_USER_ID, 15, 1, NOW());

-- Add to Cashier role
INSERT INTO sec_userrole (user_id, roleid, createby, createdate) 
VALUES (YOUR_USER_ID, 16, 1, NOW());
```

### Remove User from Role
```sql
DELETE FROM sec_userrole 
WHERE user_id = YOUR_USER_ID AND roleid = ROLE_ID;
```

---

## 🧪 Testing Scenarios

### Test 1: Doctor User
1. Assign user to Doctor role (role_id 13)
2. Login as that user
3. **Expected:**
   - ✅ Clinic Management menu visible
   - ✅ Can create consultations
   - ✅ Can write prescriptions
   - ✅ Can view lab orders

### Test 2: Sales Manager (Non-Clinic Role)
1. User has only "sale manager" role (role_id 2)
2. Login as that user
3. **Expected:**
   - ❌ Clinic Management menu **HIDDEN**
   - ❌ Cannot access clinic URLs directly (redirected)

### Test 3: Reception User
1. Assign user to Reception role (role_id 8)
2. Login as that user
3. **Expected:**
   - ✅ Clinic Management menu visible
   - ✅ Can register patients
   - ✅ Can book appointments
   - ❌ Cannot create consultations (no permission)

### Test 4: Lab Technician
1. Assign user to Lab role (role_id 15)
2. Login as that user
3. **Expected:**
   - ✅ Clinic Management menu visible
   - ✅ Can access Lab Orders
   - ✅ Can update lab results
   - ❌ Cannot modify patient records

---

## 📊 Security Layers

### Layer 1: Role-Based Menu Visibility
- Menu only shows if `has_clinic_role()` returns true
- Controlled at: `/application/views/include/admin_header.php`

### Layer 2: Module Permission Check
- User must have permission for at least one clinic module
- Controlled by: `$this->permission1->module('patients')->access()`

### Layer 3: Controller Protection
- Each controller method checks permissions
- Controlled in: `/application/controllers/Patients.php`

### Layer 4: URL Access Control
- Direct URL access blocked if no permissions
- User redirected with error message

---

## 🔄 What Changed

### Files Modified:

**1. `/application/libraries/Auth.php`**
- Added `role_ids` to session during login
- Stores user's role IDs from `sec_userrole` table

**2. `/application/views/include/admin_header.php`**
- Added `has_clinic_role()` helper function
- Updated clinic menu condition to check roles
- Menu only visible to: Admin, Reception, Doctor, Lab, Cashier

### Files Created:

**1. `create_clinic_roles.sql`**
- Creates required clinic roles if missing

**2. `setup_clinic_role_permissions.sql`**
- Assigns permissions to clinic roles
- Sets up proper CRUD access

**3. `CLINIC_ROLE_BASED_ACCESS.md` (this file)**
- Complete documentation

### Database Changes:

**1. Session Data:**
```json
{
  "role_ids": "[8, 13]"  // Example: Reception + Doctor
}
```

**2. Roles Created:**
- Doctor (ID: 13)
- Nurse (ID: 14)
- Lab Technician (ID: 15)
- Cashier (ID: 16)
- Reception (IDs: 8-12 already existed)

**3. Permissions Added:**
- 28 permission entries for clinic roles
- Proper CRUD access for each role

---

## ⚠️ Important Notes

1. **Admin Bypass**: Users with `user_type = 1` see everything regardless of roles
2. **Multiple Roles**: A user can have multiple roles (e.g., Doctor + Reception)
3. **Re-login Required**: Users must re-login after role changes
4. **Case-Insensitive**: Role matching is case-insensitive ('Doctor' = 'doctor')

---

## 🆘 Troubleshooting

### Menu Not Showing for Doctor
**Problem:** Doctor user can't see clinic menu

**Solutions:**
1. Check user has Doctor role assigned:
   ```sql
   SELECT * FROM sec_userrole WHERE user_id = YOUR_USER_ID;
   ```
2. Check role permissions exist:
   ```sql
   SELECT * FROM role_permission WHERE role_id = 13;
   ```
3. Ask user to re-login (session needs refresh)

### Menu Showing for Wrong Roles
**Problem:** Sales manager can see clinic menu

**Solution:**
- Check `has_clinic_role()` function in admin_header.php
- Verify role name in database matches allowed list
- Clear application cache

### Direct URL Access Still Works
**Problem:** User can access `/patients` URL directly

**Solution:**
- Verify permission guards in controller:
   ```php
   $this->permission1->module('patients')->redirect();
   ```
- Check user has no clinic module permissions

---

## 📞 Support

**Quick Commands:**
```bash
# View all roles
/opt/lampp/bin/mysql -u root -e "USE pms; SELECT * FROM sec_role;"

# View user roles
/opt/lampp/bin/mysql -u root -e "USE pms; SELECT * FROM sec_userrole WHERE user_id = YOUR_USER_ID;"

# View clinic permissions
/opt/lampp/bin/mysql -u root -e "USE pms; SELECT * FROM role_permission WHERE fk_module_id >= 17;"

# Re-run setup
/opt/lampp/bin/mysql -u root pms < /opt/lampp/htdocs/pms/setup_clinic_role_permissions.sql
```

---

**Implementation Date:** December 4, 2025  
**Status:** ✅ Production Ready  
**Version:** 2.0 (Role-Based Access Control)











