FROM centos:latest
MAINTAINER snehacde9@gmail.com
RUN yum install -y httpd \
    zip\
    unzip
ADD /home/test/myapp/code.php  /root/myapp 
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80 22 8080
