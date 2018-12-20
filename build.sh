docker run -dit --name elk debin:latest

docker build -t lfmc/elk:centos7-update .
docker build -t lfmc/elk:0.1 .
docker build -f Dockerfile0 -t lfmc/elk:1 .
docker build -f Dockerfile -t lfmc/elk:2 .

docker rmi lfmc/elk:0.1

docker run --name elk-1 -dit -p 9200:9200 -p 5601:5601 -p 81:80 lfmc/elk:0.1
docker run -p 5601:5601 -p 9201:9200 -p 5044:5044 -it --name elk sebp/elk

docker exec -it elk-1 bash
