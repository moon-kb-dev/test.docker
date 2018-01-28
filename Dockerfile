FROM centos:6

MAINTAINER 0.1 moon.kb.dev@gmail.com

RUN yum -y install httpd

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
