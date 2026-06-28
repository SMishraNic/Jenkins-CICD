FROM quay.io/centos/centos:stream9

MAINTAINER sunil@gmail.com

RUN yum install -y httpd zip unzip && \
    yum clean all

ADD https://www.tooplate.com/download/2156_graphite_creative /var/www/html/

WORKDIR /var/www/html

RUN unzip 2156_graphite_creative && \
    cp -rvf 2156_graphite_creative/* . && \
    rm -rf 2156_graphite_creative 2156_graphite_creative.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80