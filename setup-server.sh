#!/bin/bash

# Update package list
sudo apt-get update -y

# Install Nginx
sudo apt-get install nginx -y

# Start Nginx service
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Create a simple HTML page
echo "<h1>Hello from my automated EC2 server!</h1>" | sudo tee /var/www/html/index.html
