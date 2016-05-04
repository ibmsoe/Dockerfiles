#!/bin/bash

cd /Portus
echo "machine_fqdn: " >> config/config.yml
echo "   value: \"${PORTUS_FQDN}\"" >> config/config.yml
cp /certs/domain.crt /usr/local/share/ca-certificates
update-ca-certificates
bundle exec rake db:create
bundle exec rake db:migrate:reset
bundle exec rake db:seed

puma -b tcp://0.0.0.0:3000 -w 3
