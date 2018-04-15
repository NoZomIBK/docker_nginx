FROM nginx

RUN apt-get update && \
        apt-get install -y php5.6-gd libpcre3-dev php5.6-dev make php-pear php5.6-curl php5.6-mcrypt php5.6-mysql php5.6-sqlite php5.6-xsl php5.6-fpm php5.6-ldap php-mail && \
        rm -rf /var/lib/apt/lists/*

ADD start.sh /etc/nginx/start.sh

RUN chmod +x /etc/nginx/start.sh

CMD ["/etc/nginx/start.sh"]

