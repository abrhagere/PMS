#!/bin/bash
# Installation script for PMS Application
# Target versions: PHP 7.3.0, Apache 2.4.37, MySQL 5.0.12+, MariaDB

set -e

PROJECT_DIR="/home/devops/Documents/t - stock abrha/pms (11)/pms"
APACHE_USER="www-data"
PHP_VERSION="7.3"

echo "========================================="
echo "PMS Application Installation Script"
echo "========================================="
echo ""

# Check if running as root for system commands
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root or with sudo for system package installation"
    echo "You can also run parts of this script without root for local setup"
    exit 1
fi

# Function to check PHP version
check_php() {
    echo "Checking PHP installation..."
    if command -v php &> /dev/null; then
        PHP_VER=$(php -v | head -n 1 | cut -d " " -f 2 | cut -d "." -f 1,2)
        echo "PHP version found: $PHP_VER"
        if [[ "$PHP_VER" == "7.3" ]]; then
            echo "✅ PHP 7.3.x detected"
        else
            echo "⚠️  Warning: Expected PHP 7.3, but found $PHP_VER"
        fi
    else
        echo "❌ PHP not found. Please install PHP 7.3.0 first"
        exit 1
    fi
}

# Function to check Apache version
check_apache() {
    echo ""
    echo "Checking Apache installation..."
    if command -v apache2 &> /dev/null; then
        APACHE_VER=$(apache2 -v | head -n 1 | cut -d "/" -f 2 | cut -d " " -f 1)
        echo "Apache version found: $APACHE_VER"
        echo "✅ Apache detected"
    else
        echo "❌ Apache not found. Please install Apache 2.4.37 first"
        exit 1
    fi
}

# Function to check MySQL/MariaDB
check_mysql() {
    echo ""
    echo "Checking MySQL/MariaDB installation..."
    if command -v mysql &> /dev/null; then
        MYSQL_VER=$(mysql --version | cut -d " " -f 6 | cut -d "," -f 1)
        echo "MySQL/MariaDB client version: $MYSQL_VER"
        echo "✅ MySQL/MariaDB client detected"
    else
        echo "❌ MySQL/MariaDB client not found"
        exit 1
    fi
    
    # Check if MariaDB service is running
    if systemctl is-active --quiet mariadb; then
        echo "✅ MariaDB service is running"
    elif systemctl is-active --quiet mysql; then
        echo "✅ MySQL service is running"
    else
        echo "⚠️  Warning: MySQL/MariaDB service is not running"
        echo "   Start it with: sudo systemctl start mariadb"
    fi
}

# Function to install PHP extensions
install_php_extensions() {
    echo ""
    echo "Checking PHP extensions..."
    
    REQUIRED_EXTENSIONS=("mysqli" "mbstring" "curl" "gd" "xml" "zip" "openssl")
    MISSING_EXTENSIONS=()
    
    for ext in "${REQUIRED_EXTENSIONS[@]}"; do
        if php -m | grep -q "^$ext$"; then
            echo "✅ $ext extension is installed"
        else
            echo "❌ $ext extension is missing"
            MISSING_EXTENSIONS+=("php${PHP_VERSION}-${ext}")
        fi
    done
    
    if [ ${#MISSING_EXTENSIONS[@]} -gt 0 ]; then
        echo ""
        echo "Installing missing PHP extensions..."
        apt-get update
        apt-get install -y "${MISSING_EXTENSIONS[@]}"
        echo "✅ PHP extensions installed"
    fi
}

# Function to configure Apache
configure_apache() {
    echo ""
    echo "Configuring Apache..."
    
    # Enable required modules
    echo "Enabling Apache modules..."
    a2enmod rewrite
    a2enmod php${PHP_VERSION}
    
    # Check if mod_rewrite is enabled
    if apache2ctl -M | grep -q rewrite_module; then
        echo "✅ mod_rewrite is enabled"
    else
        echo "❌ Failed to enable mod_rewrite"
    fi
    
    echo "✅ Apache configuration complete"
}

# Function to set permissions
set_permissions() {
    echo ""
    echo "Setting file permissions..."
    
    cd "$PROJECT_DIR" || exit 1
    
    # Set ownership
    chown -R ${APACHE_USER}:${APACHE_USER} .
    echo "✅ Ownership set to ${APACHE_USER}"
    
    # Set directory permissions
    find . -type d -exec chmod 755 {} \;
    echo "✅ Directory permissions set to 755"
    
    # Set file permissions
    find . -type f -exec chmod 644 {} \;
    echo "✅ File permissions set to 644"
    
    # Set writable directories (for installation)
    chmod 777 application/config/database.php 2>/dev/null || true
    chmod 777 application/config/config.php 2>/dev/null || true
    chmod 777 -R application/ci_sessions 2>/dev/null || true
    chmod 777 -R application/cache 2>/dev/null || true
    
    echo "✅ Writable permissions set for installation"
}

# Function to create database
create_database() {
    echo ""
    echo "Database setup..."
    read -p "Do you want to create the database now? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read -p "Enter MySQL root password: " -s MYSQL_PASSWORD
        echo
        
        mysql -u root -p"${MYSQL_PASSWORD}" <<EOF
CREATE DATABASE IF NOT EXISTS pms CHARACTER SET utf8 COLLATE utf8_general_ci;
SHOW DATABASES LIKE 'pms';
EOF
        
        if [ $? -eq 0 ]; then
            echo "✅ Database 'pms' created successfully"
        else
            echo "❌ Failed to create database. Please create it manually."
        fi
    else
        echo "Skipping database creation. Please create it manually:"
        echo "  mysql -u root -p"
        echo "  CREATE DATABASE pms CHARACTER SET utf8 COLLATE utf8_general_ci;"
    fi
}

# Main execution
echo "Starting installation checks..."
echo ""

check_php
check_apache
check_mysql
install_php_extensions
configure_apache
set_permissions
create_database

echo ""
echo "========================================="
echo "Installation checks completed!"
echo "========================================="
echo ""
echo "Next steps:"
echo "1. Ensure Apache virtual host is configured"
echo "2. Access http://localhost/install/ in your browser"
echo "3. Follow the installation wizard"
echo ""
echo "For detailed instructions, see SETUP_GUIDE.md"

