FROM debian:latest

RUN apt-get update && apt-get install -y default-jre default-jdk vim wget sudo gnupg gnupg2 gnupg1 procps libwww-perl \
    && wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - \
    && apt-get install apt-transport-https \
    && echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list \
    && apt-get update && apt-get install elasticsearch 
    
RUN service elasticsearch start

EXPOSE 9200
