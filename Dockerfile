FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.4

RUN mkdir -p /var/lib/elasticsearch
RUN chown -R 1000:1000 /var/lib/elasticsearch/

COPY elasticsearch.yml /usr/share/elasticsearch/config

EXPOSE 9200
