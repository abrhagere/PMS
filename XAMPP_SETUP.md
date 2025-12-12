# XAMPP Installation Guide for PMS Application

## Project Requirements

### Required Versions
- **PHP**: 7.3.0
- **Apache**: 2.4.37
- **MySQL**: 15.1 (or MariaDB 10.1.37)
- **CodeIgniter**: 3.1.4 (already in project)

### Minimum Requirements (from codebase)
- **PHP**: 5.3.7+ (we're using 7.3.0 ✅)
- **MySQL**: 4.1.13+ (we're using 15.1 ✅)
- **PHP Extensions**: mysqli, session, openssl (mcrypt deprecated, code has fallback)

---

## Step 1: Install XAMPP

### Option A: Download XAMPP with Required Versions

1. **Download XAMPP for Linux**:
   - Visit: https://www.apachefriends.org/download.html
   - Select: **XAMPP for Linux** (should include PHP 7.3.x, Apache 2.4.x, MariaDB 10.x)
   - Or use direct download:
   
   ```bash
   cd /tmp
   wget https://www.apachefriends.org/xampp-files/7.3.x/xampp-linux-x64-7.3.x.tar.gz
   ```

2. **Extract and Install**:
   ```bash
   sudo tar -xzf xampp-linux-x64-7.3.x.tar.gz -C /opt
   sudo chown -R root:root /opt/lampp
   ```

### Option B: Install from Repository (Ubuntu/Debian)

```bash
# Add XAMPP repository (if available) or install manually
# For manual installation, follow Option A
```

---

## Step 2: Start XAMPP Services

```bash
# Start Apache
sudo /opt/lampp/lampp startapache

# Start MySQL/MariaDB
sudo /opt/lampp/lampp startmysql

# Start both at once
sudo /opt/lampp/lampp start

# Check status
sudo /opt/lampp/lampp status
```

---

## Step 3: Verify Versions

```bash
# Check PHP version
/opt/lampp/bin/php -v
# Should show: PHP 7.3.x

# Check Apache version
/opt/lampp/bin/httpd -v
# Should show: Server version: Apache/2.4.x

# Check MySQL/MariaDB version
/opt/lampp/bin/mysql --version
# Should show: mysql  Ver 15.1 (or MariaDB 10.1.37)
```

---

## Step 4: Configure Apache Virtual Host

### Create Virtual Host Configuration

1. **Edit XAMPP Apache configuration**:
   ```bash
   sudo nano /opt/lampp/etc/httpd.conf
   ```

2. **Enable Virtual Hosts** (uncomment if commented):
   ```apache
   Include etc/extra/httpd-vhosts.conf
   ```

3. **Create/Edit virtual host file**:
   ```bash
   sudo nano /opt/lampp/etc/extra/httpd-vhosts.conf
   ```

4. **Add virtual host configuration**:
   ```apache
   <VirtualHost *:80>
       ServerName pms.local
       ServerAlias www.pms.local
       DocumentRoot "/home/devops/Documents/t - stock abrha/pms (11)/pms"
       
       <Directory "/home/devops/Documents/t - stock abrha/pms (11)/pms">
           Options -Indexes +FollowSymLinks
           AllowOverride All
           Require all granted
       </Directory>
       
       ErrorLog "/opt/lampp/logs/pms_error.log"
       CustomLog "/opt/lampp/logs/pms_access.log" combined
   </VirtualHost>
   ```

5. **Add to hosts file**:
   ```bash
   sudo nano /etc/hosts
   # Add this line:
   127.0.0.1    pms.local www.pms.local
   ```

---

## Step 5: Enable Required Apache Modules

Edit `/opt/lampp/etc/httpd.conf` and ensure these are enabled:

```apache
LoadModule rewrite_module modules/mod_rewrite.so
LoadModule php7_module modules/libphp7.so
```

---

## Step 6: Configure PHP

1. **Edit PHP configuration**:
   ```bash
   sudo nano /opt/lampp/etc/php.ini
   ```

2. **Update/verify these settings**:
   ```ini
   upload_max_filesize = 50M
   post_max_size = 50M
   memory_limit = 256M
   max_execution_time = 300
   date.timezone = Africa/Addis_Ababa  # Adjust to your timezone
   
   ; Enable required extensions
   extension=mysqli
   extension=mbstring
   extension=curl
   extension=gd
   extension=xml
   extension=zip
   extension=openssl
   ```

3. **Verify extensions**:
   ```bash
   /opt/lampp/bin/php -m | grep -E "mysqli|mbstring|curl|gd|xml|zip|openssl"
   ```

---

## Step 7: Set Up Database

### Create Database

1. **Access MySQL/MariaDB**:
   ```bash
   /opt/lampp/bin/mysql -u root -p
   # Default password is empty (just press Enter)
   ```

2. **Create database**:
   ```sql
   CREATE DATABASE pms CHARACTER SET utf8 COLLATE utf8_general_ci;
   SHOW DATABASES;
   EXIT;
   ```

3. **Or use phpMyAdmin**:
   - Access: http://localhost/phpmyadmin
   - Login: root (no password by default)
   - Create database: `pms` with collation `utf8_general_ci`

---

## Step 8: Configure Project for XAMPP

### Update Database Configuration

The database config will be set during installation, but defaults are:
- Hostname: `localhost`
- Username: `root`
- Password: `` (empty by default in XAMPP)
- Database: `pms`

### Set File Permissions

```bash
cd "/home/devops/Documents/t - stock abrha/pms (11)/pms"

# Make directories writable
chmod 755 application/ci_sessions
chmod 755 application/cache
chmod 755 application/logs

# Make config files writable (for installation only)
chmod 666 application/config/database.php
chmod 666 application/config/config.php

# Set ownership (optional, if needed)
sudo chown -R $USER:$USER .
```

---

## Step 9: Install Application

1. **Start XAMPP services**:
   ```bash
   sudo /opt/lampp/lampp start
   ```

2. **Access installation wizard**:
   - Open browser: http://localhost/install/ or http://pms.local/install/
   
3. **Follow installation steps**:
   - **Step 1**: Enter User ID and Purchase Key (use 'bdtask' for non-Envato)
   - **Step 2**: Verify requirements
   - **Step 3**: Database Configuration:
     - Hostname: `localhost`
     - Username: `root`
     - Password: `` (leave empty for XAMPP default)
     - Database: `pms`
   - **Step 4**: Create admin account

---

## Step 10: Configure XAMPP to Auto-start (Optional)

### Create Systemd Service

```bash
sudo nano /etc/systemd/system/xampp.service
```

Add:
```ini
[Unit]
Description=XAMPP
After=network.target

[Service]
Type=forking
ExecStart=/opt/lampp/lampp start
ExecStop=/opt/lampp/lampp stop
ExecReload=/opt/lampp/lampp reload
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```

Enable service:
```bash
sudo systemctl enable xampp
sudo systemctl start xampp
```

---

## Step 11: Secure XAMPP (Recommended)

### Set MySQL Root Password

```bash
/opt/lampp/bin/mysql -u root
```

```sql
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('your_secure_password');
FLUSH PRIVILEGES;
EXIT;
```

Update database config after installation:
```php
// application/config/database.php
'password' => 'your_secure_password',
```

---

## Troubleshooting

### XAMPP Services Won't Start

```bash
# Check if ports are in use
sudo netstat -tulpn | grep -E ':80|:3306|:443'

# Kill processes using ports (if needed)
sudo kill -9 <PID>

# Check error logs
tail -f /opt/lampp/logs/error_log
```

### Permission Denied Errors

```bash
# Check XAMPP logs
tail -f /opt/lampp/logs/error_log

# Ensure proper permissions
sudo chmod -R 755 "/home/devops/Documents/t - stock abrha/pms (11)/pms"
```

### PHP Extensions Missing

```bash
# Check loaded extensions
/opt/lampp/bin/php -m

# Edit php.ini to enable
sudo nano /opt/lampp/etc/php.ini
# Uncomment: extension=mysqli (etc.)
```

### Database Connection Failed

1. Check MySQL is running:
   ```bash
   sudo /opt/lampp/lampp status
   ```

2. Verify credentials in `application/config/database.php`

3. Test connection:
   ```bash
   /opt/lampp/bin/mysql -u root -p -e "SHOW DATABASES;"
   ```

---

## XAMPP Control Panel (GUI)

If you prefer GUI:

```bash
sudo /opt/lampp/manager-linux-x64.run
```

Or use command line:
```bash
# Start all
sudo /opt/lampp/lampp start

# Stop all
sudo /opt/lampp/lampp stop

# Restart all
sudo /opt/lampp/lampp restart

# Status
sudo /opt/lampp/lampp status
```

---

## Quick Reference

### XAMPP Directory Structure
- Apache config: `/opt/lampp/etc/httpd.conf`
- PHP config: `/opt/lampp/etc/php.ini`
- MySQL config: `/opt/lampp/etc/my.cnf`
- Web root: `/opt/lampp/htdocs/` (we're using custom path)
- Logs: `/opt/lampp/logs/`
- Binaries: `/opt/lampp/bin/`

### Common Commands
```bash
# Start/Stop/Restart
sudo /opt/lampp/lampp {start|stop|restart}

# Status check
sudo /opt/lampp/lampp status

# PHP CLI
/opt/lampp/bin/php -v

# MySQL CLI
/opt/lampp/bin/mysql -u root -p

# Apache test config
/opt/lampp/bin/httpd -t
```

---

## Next Steps After Installation

1. ✅ Complete installation wizard
2. ✅ Remove/secure `/install/` directory
3. ✅ Update file permissions (remove 777 from config files)
4. ✅ Set secure database password
5. ✅ Configure base URL in `application/config/config.php`
6. ✅ Test the application: http://pms.local/
