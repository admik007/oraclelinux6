FROM oraclelinux:6

RUN curl https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm -o epel-release-6-8.noarch.rpm && yum localinstall -y epel-release-6-8.noarch.rpm && rm -f epel-release-6-8.noarch.rpm
RUN curl http://yum.oracle.com/public-yum-ol6.repo -o public-yum-ol6.repo

RUN yum -y update

CMD while true; do sleep 10; done
