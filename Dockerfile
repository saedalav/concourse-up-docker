FROM centos
ENV CONCOURSE_UP_VERSION=0.9.2

RUN yum install -y openssl-devel openssl gcc zlib-devel && yum clean all
RUN yum install -y ruby && yum clean all
RUN curl -o concourse-up -L https://github.com/EngineerBetter/concourse-up/releases/download/${CONCOURSE_UP_VERSION}/concourse-up-linux-amd64
RUN chmod +x concourse-up
RUN mv concourse-up /usr/bin/concourse-up


