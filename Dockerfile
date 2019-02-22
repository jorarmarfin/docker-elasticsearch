FROM ubuntu:18.04

#ACTUALIZA E INSTALA JDK ORACLE
RUN apt-get update && apt-get install -y vim nmap sudo software-properties-common tar gzip  curl \
    && add-apt-repository -y ppa:linuxuprising/java \
    && apt-get update \
    && yes | apt-get install -y oracle-java11-installer

#INSTALO ELASTICSEARCH Y KIBANA
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.5.4.deb \
    && wget https://artifacts.elastic.co/downloads/kibana/kibana-6.5.4-amd64.deb \
    && dpkg -i elasticsearch-6.5.4.deb \
    && dpkg -i kibana-6.5.4-amd64.deb 

ENV JAVA_HOME="/usr/lib/jvm/java-11-oracle"

EXPOSE 9200
EXPOSE 5601