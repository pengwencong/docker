#!/bin/bash

#docker pull elasticsearch:7.16.1

#git clone git@github.com:pengwencong/elastic.git

#chmod 777 -R elastic

#sysctl -w vm.max_map_count=262144

sed -i 's/node-2/node-3/' /home/elastic/conf/elasticsearch.yml
sed -i 's/106.55.178.129/../' /home/elastic/conf/elasticsearch.yml

sed -i 'a ..' /home/elastic/conf/unicast_hosts.txt

#docker run -it --name elastic -p 9200:9200 -p 9300:9300 -e ES_JAVA_OPTS="-Xms256m -Xmx256m" -v /home/elastic/conf/elasticsearch.yml:/us#r/share/elasticsearch/config/elasticsearch.yml -v /home/elastic/data:/usr/share/elasticsearch/data -v /home/elastic/plugins:/usr/share/#elasticsearch/plugins -v /home/elastic/conf/unicast_hosts.txt:/usr/share/elasticsearch/config/unicast_hosts.txt -d elasticsearch:7.16.1


