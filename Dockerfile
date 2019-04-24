FROM registry.access.redhat.com/rhel7/rhel


COPY nginx.repo /etc/yum.repos.d/

# Add Web server, update image, and clear cache
#RUN yum -y remove openssl-libs
#RUN yum -y update
#RUN yum --showduplicates list nginx
#RUN yum install -y openssl-libs
RUN yum -y update
#RUN yum install openssl-devel-1.0.1e-60 openssl-libs-1.0.1e-60 openssl-1.0.1e-60
#RUN yum -y update
RUN yum -y install rh-nginx18
RUN yum clean all


# Add some data to web server
#RUN echo "This Web server is working." > /var/www/html/index.html
#EXPOSE 80

#ENTRYPOINT ["tail -f /dev/null"]
ENTRYPOINT [ "/usr/sbin/nginx" ]
#CMD [ "-D", "FOREGROUND" ]

