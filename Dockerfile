FROM centos:7

MAINTAINER Qihongchuan <qihongchuan@vchangyi.com>

RUN yum update -y \
    && yum install sudo gnupg -y \
    && curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent3.sh | sh 

CMD service td-agent start && tail -f /dev/null
