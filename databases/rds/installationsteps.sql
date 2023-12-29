-- CONNECT PHP- MYSQL
-- INSTALL PHP
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-lamp-amazon-linux-2023.html
Prepare Lamp server
- `sudo dnf update -y`
-- Install latest version of Apache web servers and PHP packages
`sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel`

-- Install MySQL
sudo dnf install mariadb105-server
-- Start the Apache
sudo systemctl start httpd
-- COnfigure Apache web server to start each system boot.
sudo systemctl enable httpd

-- Connect from MySQL command-line client (unencrypted)
mysql -h [connection-endpoint] -P 3306 -u admin -p

For the -h parameter, replace the DNS name (endpoint) for the DB instance
For the -P parameter, substitute the port for the DB instance. (3306)
For the -u parameter, replace it with master user
Enter master user password

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