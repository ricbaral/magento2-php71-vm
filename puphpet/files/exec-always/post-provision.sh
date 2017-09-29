#!/bin/bash

# Copy nginx configuration
cp /vagrant/nginx.conf.vm /etc/nginx/sites-available/_.conf

# Restart nginx
service nginx restart