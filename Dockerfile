FROM selenium/node-chrome

MAINTAINER angrytester <thx_phila@yahoo.com>

USER root

VOLUME /etc/shm

RUN apt-get update \
    && apt-get -y install ttf-wqy-microhei ttf-wqy-zenhei \
    && apt-get clean
    
ENV ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8

RUN locale-gen zh_CN.UTF-8
   
USER seluser
