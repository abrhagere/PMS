# Version Requirements Summary

## Found in Codebase

### PHP Version
- **Minimum Required**: PHP 5.3.7 or greater
  - Source: `install/php/Requirements.php` line 128
  - Source: `install/composer.json` line 19
  - Source: `index.php` line 76 (checks for PHP 5.3+)

- **Framework**: CodeIgniter 3.1.4
  - Source: `system/core/CodeIgniter.php` line 58

### MySQL/MariaDB Version
- **Minimum Required**: MySQL 4.1.13 or greater
  - Source: `install/php/Requirements.php` line 156-163
  - Uses **mysqli** driver (not mysql extension)
  - Source: `application/config/database.php` line 83

### PHP Extensions Required
- **mysqli** - MySQL improved extension
- **session** - Session handling
- **mcrypt** - Encryption (deprecated in PHP 7.1+, but code has fallback to openssl)
  - Source: `install/php/Requirements.php` lines 111-115

### Web Server
- **Apache** (indicated by .htaccess files)
  - Uses mod_rewrite for URL routing
  - Uses authz_core_module for directory protection
  - Source: `.htaccess`, `system/.htaccess`, `application/.htaccess`

---

## User Requested Versions

### PHP
- **Version**: 7.3.0
- **Status**: ✅ Compatible (exceeds minimum 5.3.7)

### Apache
- **Version**: 2.4.37
- **Status**: ✅ Compatible (Apache 2.4 supports all required modules)

### MySQL Client
- **Version**: 5.0.12
- **Status**: ✅ Compatible (exceeds minimum 4.1.13)

### MariaDB
- **Status**: ✅ Compatible (MariaDB is MySQL compatible and uses mysqli driver)

---

## Notes

1. **mcrypt Extension**: PHP 7.3 does not include mcrypt by default (deprecated since PHP 7.1). The code has a fallback to `openssl_random_pseudo_bytes()` in `install/index.php` line 48, so this should work.

2. **MySQL 5.0.12**: This is an old version (from 2005). Modern MariaDB or MySQL 5.7+ is recommended for better security and features.

3. **Database Driver**: The application uses `mysqli` which is compatible with both MySQL and MariaDB.

4. **CodeIgniter 3.1.4**: Fully supports PHP 7.3.0.




