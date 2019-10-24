FROM centos:centos7

WORKDIR /root/

#安装前准备
RUN yum -y install wget unzip curl

ADD ./ccaa-install/ /root/ccaa-install/

RUN cd ccaa-install && bash ./ccaa.sh

CMD /usr/sbin/ccaa start && /bin/bash --login