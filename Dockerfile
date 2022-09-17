FROM centos:latest
MAINTAINER khatoott.136@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/newsoft.zip
WORKDIR /var/www/html
RUN unzip newsoft.zip
RUN cp  -rvf newsoft/*.
RUN rm -rf newsoft newsoft.zip
CMD ["/user/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
