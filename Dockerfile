FROM debian:latest

RUN apt-get update && apt-get install -y default-jre default-jdk vim wget \
    && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.5.3.tar.gz

