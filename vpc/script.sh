#!/bin/bash

# Update system
sudo apt update -y

# Install nginx
sudo apt install nginx -y

# Start nginx service
sudo systemctl start nginx

# Enable nginx on boot
sudo systemctl enable nginx

# Check status
sudo systemctl status nginx --no-pager

echo "✅ Nginx installed and running successfully"
