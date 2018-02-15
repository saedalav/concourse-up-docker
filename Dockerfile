

FROM centos 
RUN yum install -y openssl-devel openssl gcc zlib-devel && yum clean all
RUN yum install -y ruby && yum clean all 
COPY concourse-up /usr/bin/
