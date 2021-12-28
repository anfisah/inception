service mysql start

mysql -u root -e "CREATE USER '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASS}';"
mysql -u root -e "CREATE DATABASE ${SQL_NAME};"
mysql -u root -e "USE ${SQL_NAME}; GRANT ALL PRIVILEGES ON * TO '${SQL_USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root ${SQL_NAME} < /wordpress.sql
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_PASS}'; FLUSH PRIVILEGES;"
