FROM registry.access.redhat.com/rhel7/rhel


COPY nginx.repo /etc/yum.repos.d/

# Add Web server, update image, and clear cache
#RUN yum -y remove openssl
#RUN yum -y update
#RUN yum --showduplicates list nginx
#RUN yum install -y openssl-libs
RUN yum -y update
RUN yum -y install nginx-1.10.0 --skip-broken
RUN yum clean all


# Add some data to web server
#RUN echo "This Web server is working." > /var/www/html/index.html
#EXPOSE 80

#ENTRYPOINT ["tail -f /dev/null"]
ENTRYPOINT [ "/usr/sbin/nginx" ]
#CMD [ "-D", "FOREGROUND" ]

