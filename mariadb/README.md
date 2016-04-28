Dockerize Mariadb 
#Build
docker build -t mariadb .

For building it on PowerPC LE platform do this
docker build -t ppc64le/mariadb -f Dockerfile.ppc64le .

#Run
docker run -itd -e MYSQL_ROOT_PASSWORD=password -e MYSQL_USER=user -e MYSQL_PASSWORD=pass -e MYSQL_DB=test -p 3306:3306 ppc64le/mariadb 
