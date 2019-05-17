FROM centos:7

MAINTAINER Qihongchuan <qihongchuan@vchangyi.com>

RUN yum update -y \
    && yum install sudo gnupg -y \
    && curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent3.sh | sh 

# COPY td-agent.conf /etc/td-agent/td-agent.conf

CMD service td-agent start && tail -f /dev/null
