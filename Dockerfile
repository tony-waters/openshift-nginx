FROM registry.access.redhat.com/rhel7

COPY nginx.repo /etc/yum.repos.d/

RUN yum update -y
RUN  yum install -y nginx







