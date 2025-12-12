# Setup Guide for PMS Application

## Target Versions
- **PHP**: 7.3.0
- **Apache**: 2.4.37
- **MySQL Client**: 5.0.12
- **MariaDB Server**: (Latest compatible version)

## System Requirements Summary

### PHP Requirements
- Minimum: PHP 5.3.7
- Target: PHP 7.3.0 ✅
- Required Extensions:
  - **mysqli** (MySQL Improved Extension)
  - **session** (Session Support)
  - **openssl** (Required for PHP 7.3+ as mcrypt replacement)
  - **mbstring** (Multi-byte string support)
  - **gd** or **imagick** (For image processing)
  - **curl** (For HTTP requests)

**Note**: The `mcrypt` extension is deprecated in PHP 7.1+ and removed in PHP 7.2+. The application code already has a fallback to OpenSSL, so mcrypt is optional.

### Database Requirements
- **Minimum MySQL**: 4.1.13 or greater
- **MySQL Client**: 5.0.12 ✅
- **Database Driver**: mysqli (already configured)
- **Character Set**: UTF-8

### Web Server
- **Apache**: 2.4.37 ✅
- **Required Modules**:
  - mod_rewrite (for clean URLs)
  - mod_php (PHP handler)
  - mod_authz_core (for directory protection)

## Installation Steps

### 1. Install PHP 7.3.0

```bash
# On Ubuntu/Debian
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php7.3 php7.3-cli php7.3-fpm php7.3-mysql php7.3-mbstring php7.3-xml php7.3-curl php7.3-zip php7.3-gd

# Verify installation
php -v  # Should show PHP 7.3.0
```

### 2. Install Apache 2.4.37

```bash
# On Ubuntu/Debian
sudo apt install apache2
sudo a2enmod rewrite
sudo a2enmod php7.3

# Verify installation
apache2 -v  # Should show Apache/2.4.37
```

### 3. Install MySQL Client 5.0.12 and MariaDB

```bash
# Install MariaDB Server (MySQL compatible)
sudo apt install mariadb-server mariadb-client

# Verify MySQL client version
mysql --version  # Should show version compatible with 5.0.12+

# Secure MariaDB installation
sudo mysql_secure_installation
```

### 4. Configure Apache Virtual Host

Create or edit Apache configuration:

```apache
<VirtualHost *:80>
    ServerName pms.local
    DocumentRoot /home/devops/Documents/t - stock abrha/pms (11)/pms
    
    <Directory /home/devops/Documents/t - stock abrha/pms (11)/pms>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
    
    ErrorLog ${APACHE_LOG_DIR}/pms_error.log
    CustomLog ${APACHE_LOG_DIR}/pms_access.log combined
</VirtualHost>
```

**Note**: The directory path has spaces, so you may want to use a symbolic link or escape the path properly.

### 5. Set File Permissions

```bash
# Navigate to project directory
cd "/home/devops/Documents/t - stock abrha/pms (11)/pms"

# Set ownership (adjust user:group as needed)
sudo chown -R www-data:www-data .

# Set directory permissions
find . -type d -exec chmod 755 {} \;

# Set file permissions
find . -type f -exec chmod 644 {} \;

# Make config files writable (for installation)
chmod 777 application/config/database.php
chmod 777 application/config/config.php
chmod 777 install/php/Database.php

# Set writable permissions for session and cache
chmod 777 -R application/ci_sessions
chmod 777 -R application/cache
```

### 6. Create Database

```bash
# Login to MariaDB
mysql -u root -p

# Create database
CREATE DATABASE pms CHARACTER SET utf8 COLLATE utf8_general_ci;

# Create user (optional, recommended for security)
CREATE USER 'pms_user'@'localhost' IDENTIFIED BY 'your_password';
GRANT ALL PRIVILEGES ON pms.* TO 'pms_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

### 7. Run Installation

1. Open browser and navigate to: `http://localhost/install/` or `http://pms.local/install/`

2. Follow the installation wizard:
   - **Step 1**: Enter Envato User ID and Purchase Key (or use 'bdtask' for non-Envato)
   - **Step 2**: Verify requirements are met
   - **Step 3**: Enter database credentials:
     - Hostname: `localhost`
     - Username: `root` (or `pms_user`)
     - Password: (your database password)
     - Database: `pms`
   - **Step 4**: Create admin account

### 8. Post-Installation

After installation:
- Remove or restrict access to `/install/` directory
- Set proper file permissions (remove 777 from config files)
- Review and update `application/config/config.php` settings
- Review and update `application/config/database.php` settings

## Configuration Files

### Database Configuration
Location: `application/config/database.php`

Default settings (will be updated during installation):
```php
$db['default'] = array(
    'hostname' => 'localhost',
    'username' => 'root',
    'password' => '',
    'database' => 'pms',
    'dbdriver' => 'mysqli',
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci',
);
```

### Application Configuration
Location: `application/config/config.php`

Key settings:
- Base URL: Auto-detected (or manually set)
- Encryption Key: Set during installation
- Session settings: Configured in config.php

## Troubleshooting

### PHP mcrypt Warning
If you see warnings about mcrypt, it's safe to ignore. The application uses OpenSSL as a fallback.

### Permission Denied Errors
Ensure Apache user (www-data) has read access to all files and write access to:
- `application/ci_sessions/`
- `application/cache/`
- `application/config/` (during installation only)

### Apache mod_rewrite Not Working
1. Enable mod_rewrite: `sudo a2enmod rewrite`
2. Check `.htaccess` file exists in project root
3. Verify Apache `AllowOverride All` is set

### Database Connection Errors
1. Verify MariaDB is running: `sudo systemctl status mariadb`
2. Check database credentials in `application/config/database.php`
3. Verify database exists: `mysql -u root -p -e "SHOW DATABASES;"`

## Security Notes

1. **After Installation**: 
   - Remove or password-protect the `/install/` directory
   - Set config file permissions to 644 (read-only)

2. **Database**:
   - Use a dedicated database user instead of root
   - Use strong passwords

3. **File Permissions**:
   - Config files should not be world-writable after installation
   - Only session and cache directories need write access

## Compatibility Notes

- **PHP 7.3.0**: Fully compatible with CodeIgniter 3.1.4
- **MySQL 5.0.12 Client**: Compatible (exceeds minimum 4.1.13)
- **MariaDB**: Fully compatible (drop-in replacement for MySQL)
- **Apache 2.4.37**: All required modules are supported




