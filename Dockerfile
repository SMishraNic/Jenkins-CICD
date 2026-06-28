FROM quay.io/centos/centos:stream9
MAINTAINER sunil@gmail.com
RUN  yum install httpd -y \
zip\
unzip
ADD https://www.tooplate.com/download/2156_graphite_creative /var/www/html
WORKDIR /var/www/html
RUN unzip 2156_graphite_creative.zip
RUN cp -rvf 2156_graphite_creative/* .
RUN rm -rf 2156_graphite_creative  2156_graphite_creative.zip
CMD ["usr/sbin/httpd", ".D", "FOREGROUND"]
EXPOSE 80 22