#!/bin/bash

cd /var/www/shop

echo "Installing Magento 2 via CLI..."
bin/magento setup:install --base-url=http://magento2.dev/ --db-host=localhost --db-name=magento --db-user=vagrant --db-password=vagrant --admin-firstname=Magento --admin-lastname=User --admin-email=user@example.com --admin-user=admin --admin-password=admin123 --language=en_US --currency=USD --timezone=Europe/Berlin --backend-frontname=admin --quiet

echo "Setting developer mode..."
bin/magento deploy:mode:set developer

echo "Setup Magento 2 cron jobs..."
bin/magento cron:install

echo "Disable block_html cache..."
bin/magento cache:disable block_html

echo "Disable full_page cache..."
bin/magento cache:disable full_page

echo
echo "Frontend URL: http://magento2.dev/"
echo "Backend URL: http://magento2.dev/admin"
echo "Admin User: admin"
echo "Admin Password: admin123"
echo
