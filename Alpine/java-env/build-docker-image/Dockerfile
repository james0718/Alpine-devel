FROM openjdk:8-jdk-alpine
MAINTAINER "advantech"<yao.kang@advantech.com.cn>
RUN mkdir -p /root/adv
RUN mkdir -p /root/adv/conf
RUN mkdir -p /root/adv/models
RUN mkdir -p /root/adv/androidDM
ADD ./run.sh /root/adv/
ADD ./server.conf /root/adv/
COPY ./m2mserver.jar /root/adv/
COPY ./conf/ /root/adv/conf
COPY ./models/ /root/adv/models
COPY ./androidDM/ /root/adv/androidDM
ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'
CMD java -version
