# docker-lamp
Apache - PHP7 - Mysql5.7 - phpmyadmin - redis

## Supported Containers
- **Database:**
	- MySQL
- **No Sql:**
	- Redis
- **Servers:**
	- PHP7 Apache2
- **Tools:**
	- PhpMyAdmin

change .env to add your local settings for web folders and ports to expose the services and then run:

docker-compose up -d --build

after build is finished access mysql container and give permissions to phpmyadmin containers and web:

web:
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO root@172.19.0.5 IDENTIFIED BY '123' WITH GRANT OPTION;"

phpmyadmin:
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO root@172.19.0.4 IDENTIFIED BY '123' WITH GRANT OPTION;"


