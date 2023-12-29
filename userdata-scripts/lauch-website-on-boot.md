<!-- 
This userdata script installs GIT and apache web server.
- Clones a repository and moves to the root directory
- The website is accessible by the public IP address of the instance.
 -->



#!/bin/bash
# Update and upgrade packages
yum update -y
# Install GIT
yum install git -y
# Install Apache web server
yum install httpd -y
# Start the Apache service
systemctl start httpd
# Enable Apache to start automatically on boot
systemctl enable httpd
# Navigate to html
cd /var/www/html/
# clone git repository and add the files 
git clone https://github.com/CollyneJumah/moringram-event.git .
