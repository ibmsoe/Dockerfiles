FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y ruby \
    ruby-dev \
    ruby-bundler \
    git \
    ruby-nokogiri \
    rake \
    nodejs \
    make \
    gcc \
    libxml2 \
    libxml2-dev \
    libxslt1.1 \
    libxslt1-dev \
    libmysqlclient20 \
    libmysqlclient-dev 

RUN git clone https://github.com/SUSE/Portus.git /Portus
RUN cd /Portus && \
    export NOKOGIRI_USE_SYSTEM_LIBRARIES=1 && \
    bundle config build.nokogiri --use-system-libraries && \
    bundle install --verbose 	

ADD portus_start.sh /usr/bin/portus_start.sh
RUN chmod 755 /usr/bin/portus_start.sh
ADD database.yml /Portus/config/database.yml
ADD secrets.yml /Portus/config/secrets.yml
ADD config.yml /Portus/config/config.yml
EXPOSE 3000
ENTRYPOINT ["/usr/bin/portus_start.sh"]
