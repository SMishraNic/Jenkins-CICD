FROM quay.io/centos/centos:stream9

MAINTAINER sunil@gmail.com

RUN yum install -y httpd zip unzip && \
    yum clean all

WORKDIR /var/www/html

RUN curl -L -o graphite.zip https://www.tooplate.com/download/2156_graphite_creative && \
    unzip graphite.zip && \
    cp -rvf 2156_graphite_creative/* . && \
    rm -rf graphite.zip 2156_graphite_creative

EXPOSE 80