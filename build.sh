docker build -t drinuxsac/elk:tmp1 .
docker build -t drinuxsac/elk:tmp2 .


docker rmi lfmc/elk:0.1

docker run --name srv-elk -dit -p 9200:9200 -p 5601:5601 drinuxsac/elk:tmp1
docker run --name srv-elk -dit -p 9200:9200 -p 5601:5601 drinuxsac/elk:tmp2

docker exec -it elk-1 bash
