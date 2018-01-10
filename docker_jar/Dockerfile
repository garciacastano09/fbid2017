FROM ubuntu:16.04
MAINTAINER jgc

COPY lib/fbid2017-assembly-0.1.jar /home/fbid2017-assembly-0.1.jar
COPY lib/jdk-8u151-linux-x64.tar.gz /usr/local/jdk-8u151-linux-x64.tar.gz
COPY ./docker-entrypoint.sh /

RUN mkdir /home/data
RUN mkdir /home/spark-warehouse

COPY data/artist_alias.txt /home/data/artist_alias.txt
COPY data/artist_data.txt /home/data/artist_data.txt
COPY data/user_artist_data_1000.txt /home/data/user_artist_data_1000.txt

RUN tar zfx /usr/local/jdk-8u151-linux-x64.tar.gz  -C /usr/local/ \
    && rm -rf $JAVA_HOME/man \
    && rm /usr/local/jdk-8u151-linux-x64.tar.gz
RUN apt-get update \
 && apt-get install -y iputils-ping \
 && apt-get install -y curl

RUN chmod +x /docker-entrypoint.sh

ENV JAVA_HOME="/usr/local/jdk1.8.0_151"
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["/docker-entrypoint.sh"]
