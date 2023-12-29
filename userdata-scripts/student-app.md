<!-- 
The script installs Apache web server with MySQL and clone GitHub repo
 -->

#!/bin/bash
# Update and upgrade packages
yum update -y
# Install GIT
yum install git -y
# Install Apache web server
yum install -y httpd wget php-fpm php-mysqli php-json php php-devel
# Install MySQL
yum install mariadb105-server -y
# Start the Apache service
systemctl start httpd
# Enable Apache to start automatically on boot
systemctl enable httpd
# Navigate to html
cd /var/www/html/
# clone git repository and add the files 
git clone https://github.com/Jumah-Dev/studentapp.git .




-- CREATE TABLE IN YOUR DATABASE
CREATE TABLE `school`.`enrollment` ( `id` INT NOT NULL AUTO_INCREMENT , `fullname` VARCHAR(45) NOT NULL , `gender` VARCHAR(45) NOT NULL , `email` VARCHAR(45) NOT NULL , `course` VARCHAR(45) NOT NULL, `phonenumber` VARCHAR(45) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

-- DESCRIBE TABLE
DESCRIBE table
-- INSERT DATA
INSERT INTO `enrollment` 
(`id`, `fullname`,  `course`,   `email`, `gender`,`phonenumber`) VALUES
(NULL, 'Amanda Nunes','AWS Solutions Architect ',        'anunes@ufc.com',   'Male',     '012345 678910'),
(NULL, 'Alexander Volkanovski',   'AWS Solutions Architect',  'avolkanovski@ufc.com', 'Male', '012345 678910'),
(NULL, 'Khabib Nurmagomedov',      'Cloud DevOps', 'knurmagomedov@ufc.com','Female', '012345 678910'),
(NULL, 'Kamaru Usman',      'Cloud DevOps',        'kusman@ufc.com',  'Male',      '012345 678910'),
(NULL, 'Israel Adesanya',      'AWS Cloud Developer',     'iadesanya@ufc.com','Female',     '012345 678910'),
(NULL, 'Henry Cejudo',       'AWS Solutions Architect',       'hcejudo@ufc.com', 'Female',      '012345 678910'),
(NULL, 'Valentina Shevchenko',   'AWS Solutions Architect',   'vshevchenko@ufc.com', 'Male',  '012345 678910'),
(NULL, 'Tyron Woodley',       'AWS Solutions Architect',      'twoodley@ufc.com','Male',      '012345 678910'),
(NULL, 'Rose Namajunas',        'AWS Cloud Developer',   'rnamajunas@ufc.com','Male',    '012345 678910'),
(NULL, 'Tony Ferguson',        'AWS Cloud Developer',    'tferguson@ufc.com',  'Male',   '012345 678910'),
(NULL, 'Jorge Masvidal',       'AWS Cloud Practitioner',    'jmasvidal@ufc.com', 'Female',    '012345 678910'),
(NULL, 'Nate Diaz',        'AWS Cloud Practitioner ',        'ndiaz@ufc.com',  'Male',       '012345 678910'),
(NULL, 'Conor McGregor',       'AWS Solutions Architect ',    'cmcGregor@ufc.com','Male',     '012345 678910'),
(NULL, 'Cris Cyborg',        'AWS Cloud Practitioner ',      'ccyborg@ufc.com', 'Male',      '012345 678910'),
(NULL, 'Tecia Torres',       'AWS Cloud Practitioner',      'ttorres@ufc.com',  'Male',     '012345 678910'),
(NULL, 'Ronda Rousey',       'AWS Cloud Practitioner ',      'rrousey@ufc.com','Female',       '012345 678910'),
(NULL, 'Holly Holm',       'AWS Solutions Architect',        'hholm@ufc.com', 'Male',        '012345 678910'),
(NULL, 'Joanna Jedrzejczyk',  'AWS Cloud Developer ', 'jjedrzejczyk@ufc.com','Male',  '012345 678910');

-- SELECT all records
SELECT * FROM table