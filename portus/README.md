Dockerize Portus
#Build
docker build -t portus .

For building it on PowerPC LE platform do this
docker build -t ppc64le/portus -f Dockerfile.ppc64le .

#Run
1. Get the default portus certificate and key
mkdir /certs
cd /certs
wget https://raw.githubusercontent.com/SUSE/Portus/master/vagrant/conf/ca_bundle/server.crt
wget https://raw.githubusercontent.com/SUSE/Portus/master/vagrant/conf/ca_bundle/server.key

docker run -itd  -v /certs:/certs \
-e PORTUS_DB_HOST=192.168.122.253 \
-e PORTUS_DB_PORT=3306 \
-e PORTUS_DB_USERNAME=user \
-e PORTUS_DB_PASSWORD=pass \
-e PORTUS_DB_NAME=portus_db \
-e PORTUS_SECRET_KEY_BASE=8bc8ccc710eafd73d43cd59ac8881aadc89f7a6ab55f1ac11c97fb436a3931cc78c38e735e664958d9e793725f3d52178f4e2c376c346edbaca3936aebf66e27 \
-e PORTUS_KEY_PATH=/certs/server.key \
-e PORTUS_PASSWORD=portus  \
-e PORTUS_FQDN="portus.test.lan" \
-p 3000:3000 \
ppc64le/portus


#A sample registry config file to be used with the default configuration and default portus certificate is included as reference
