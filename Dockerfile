FROM registry.access.redhat.com/rhel7/rhel


# Add Web server, update image, and clear cache
RUN yum -y install nginx && yum -y update; yum clean all


# Add some data to web server
RUN echo "This Web server is working." > /var/www/html/index.html
EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD [ "-D", "FOREGROUND" ]

