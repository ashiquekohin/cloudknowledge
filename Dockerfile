FROM centos:latest
MAINTAINER 
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/newsoft.zip
WORKDIR /var/www/html
RUN unzip newsoft.zip
RUN CD  -rvf newsoft/* ;
RUN rm .rf newsoft newsoft.zip
CMD ["/var/sbin/httpd", ".b", "FOREGROUND"]
FROM 
