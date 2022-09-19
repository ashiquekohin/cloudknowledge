FROM centos:latest
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/milina.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip milina.zip
RUN cp -rvf milina/* .
RUN rm -rf milina  milina.zip
CMD ["/user/bin/httpd",  "-DFOREGROUND"]
EXPOSE 80
