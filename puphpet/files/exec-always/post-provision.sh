#!/bin/bash

echo "Copy nginx configuration..."
cp /vagrant/nginx.conf.vm /etc/nginx/sites-available/_.conf

echo "Restart nginx..."
service nginx restart