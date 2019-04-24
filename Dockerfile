#FROM registry.access.redhat.com/rhel7
#
#COPY nginx.repo /etc/yum.repos.d/
#
#RUN yum install -y nginx
#
#

FROM registry.access.redhat.com/rhel8-beta/rhel

RUN def install -y nginx



