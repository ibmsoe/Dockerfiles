Dockerize Mariadb 
##Build
<pre>
docker build -t mariadb .
</pre>

For building it on PowerPC LE platform do this
<pre>
docker build -t ppc64le/mariadb -f Dockerfile.ppc64le .
</pre>
##Run
<pre>
docker run -itd -e MYSQL_ROOT_PASSWORD=password -e MYSQL_USER=user -e MYSQL_PASSWORD=pass -e MYSQL_DB=test -p 3306:3306 ppc64le/mariadb 
</pre>
