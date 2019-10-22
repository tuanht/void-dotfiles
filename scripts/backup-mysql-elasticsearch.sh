#!/usr/bin/env bash
mysqldump -h evs_mariadb -ueverystay -pabc123 everystay > ./evs_mariadb_20191022.sql && \
    elasticdump --input=http://evs_elasticsearch:9200/everystay --output=everystay_mapping.json --type=mapping && \
    elasticdump --input=http://evs_elasticsearch:9200/everystay --output=everystay_data.json --type=data && \
    elasticdump --input=http://evs_elasticsearch:9200/currency --output=currency_mapping.json --type=mapping && \
    elasticdump --input=http://evs_elasticsearch:9200/currency --output=currency_data.json --type=data && \
    elasticdump --input=http://evs_elasticsearch:9200/translation --output=translation_mapping.json --type=mapping && \
    elasticdump --input=http://evs_elasticsearch:9200/translation --output=translation_data.json --type=data
