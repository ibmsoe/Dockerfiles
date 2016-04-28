#!/bin/bash

mysql_root_passwd=${MYSQL_ROOT_PASSWORD:-password}
mysql_passwd=${MYSQL_PASSWORD:-password}
mysql_user=${MYSQL_USER:-test}
mysql_db=${MYSQL_DB:-test}
mysqld_safe --skip-syslog &
sleep 10s
mysqladmin password "${mysql_root_passwd}"
mysql -uroot -p"${mysql_root_passwd}" -e "CREATE DATABASE ${mysql_db}"
mysql -uroot -p"${mysql_root_passwd}" -e "CREATE USER '${mysql_user}'@'%' IDENTIFIED BY '${mysql_passwd}'"
mysql -uroot -p"${mysql_root_passwd}" -e "GRANT ALL PRIVILEGES ON *.* TO '${mysql_user}'@'%' WITH GRANT OPTION"
killall mysqld
sleep 10s
mysqld_safe --skip-syslog
