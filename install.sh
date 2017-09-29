#!/bin/bash

cd /var/www/shop

bin/magento setup:install --base-url=http://magento2.dev/ --db-host=localhost --db-name=magento --db-user=vagrant --db-password=vagrant --admin-firstname=Magento --admin-lastname=User --admin-email=user@example.com --admin-user=admin --admin-password=admin123 --language=en_US --currency=USD --timezone=Europe/Berlin --backend-frontname=admin --quiet

bin/magento deploy:mode:set developer

bin/magento cron:install

bin/magento cache:disable block_html
bin/magento cache:disable full_page