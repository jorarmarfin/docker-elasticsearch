docker run -dit --name elk debin:latest

docker build -t lfmc/elk:6.5.3 .

docker run --name srv-elk -dit -p 9200:9200 lfmc/elk:6.5.3
