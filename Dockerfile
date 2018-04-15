FROM nginx

RUN apt-get update && \
        apt-get install -y php5-gd libpcre3-dev php5-dev make php-pear php5-curl php5-mcrypt php5-mysql php5-sqlite php5-xsl php5-fpm php5-ldap php-mail && \
        rm -rf /var/lib/apt/lists/*

ADD start.sh /etc/nginx/start.sh

RUN chmod +x /etc/nginx/start.sh

CMD ["/etc/nginx/start.sh"]

