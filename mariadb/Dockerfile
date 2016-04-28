FROM ubuntu:16.04

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server
ADD server.cnf /etc/mysql/mariadb.conf.d/70-server.cnf
ADD setup.sh /setup.sh
EXPOSE 3306
ENTRYPOINT ["/setup.sh"]

