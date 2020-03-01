#! /bin/bash
sudo yum update
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
sudo yum install -y mariadb-server
sudo yum  install -y php
sudo yum  install -y lamp-mariadb10.2-php php
sudo yum  install -y php-gd.x86_64 
sudo yum  install -y php-fpm.x86_64 
sudo yum  install -y php-gd.x86_64 
sudo yum  install -y php-devel.x86_64
sudo yum  install -y php-intl.x86_64
sudo yum  install -y php-ldap.x86_64
sudo yum  install -y php-mysql.x86_64
sudo yum  install -y php-mysqlnd.x86_64
sudo yum  install -y php-odbc.x86_64 
sudo yum  install -y php-pdo.x86_64 
sudo yum  install -y php-pear.noarch 
sudo yum  install -y php-snmp.x86_64 
sudo yum  install -y php-soap.x86_64 
sudo yum  install -y php-xml.x86_64
sudo yum  install -y php-xmlrpc.x86_64
sudo yum  install -y rrdtool-php.x86_64
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo yum install php-mbstring -y
sudo systemctl restart httpd
sudo systemctl restart php-fpm
sudo adduser andi
sudo echo "Tangerang123$" | passwd --stdin andi
sudo echo "Tangerang123$" | passwd --stdin root
