#!/usr/bin/env bash
/usr/local/opt/mysql-client/bin/mysql -h evs_mariadb -ueverystay -pabc123 everystay < ./evs_mariadb.sql && \
    curl -XPUT http://evs_elasticsearch:9200/currency && \
    curl -XPUT http://evs_elasticsearch:9200/translation && \
    elasticdump --output=http://evs_elasticsearch:9200/currency --input=currency_mapping.json --type=mapping && \
    elasticdump --output=http://evs_elasticsearch:9200/currency --input=currency_data.json --type=data && \
    elasticdump --output=http://evs_elasticsearch:9200/translation --input=translation_mapping.json --type=mapping && \
    elasticdump --output=http://evs_elasticsearch:9200/translation --input=translation_data.json --type=data && \
    php ~/everystay/base/bin/console ongr:es:index:create && \
    elasticdump --input=everystay_data.json --output=http://evs_elasticsearch:9200/everystay --type=data
