# docker
docker


es docker开启命令：
//-e 单节点启动与配置cluster:initial_master_nodes相冲突 -e 设置内存使用限制需要配合vm.max_map_count否则会出现exit(1)
docker run -it --name elastic -p 9200:9200 -p 9300:9300 -e ES_JAVA_OPTS="-Xms300m -Xmx300m" -v /home/elastic/conf/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml -v /home/elastic/data:/usr/share/elasticsearch/data -v /home/elastic/plugins:/usr/share/elasticsearch/plugins -d elasticsearch:7.16.1

kibana docker 开启命令：
//如果容器内有配置elastic_host 开启不需要设置
docker run -it --name kibana -e ELASTICSEARCH_HOSTS=http://106.55.178.129:9200 -p 5601:5601 -d kibana:7.16.1
