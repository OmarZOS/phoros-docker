#!bin/bash

#PHOROS_HOME=$(pwd)

cd $PHOROS_HOME/phoros-rest-server && sudo docker-compose down
cd $PHOROS_HOME/remote-extraction-proxy-and-worker && sudo docker-compose down
cd $PHOROS_HOME/data-transformation-reverse-proxy && sudo docker-compose down
cd $PHOROS_HOME/social-graph-storage && sudo docker-compose down

cd $PHOROS_HOME/social-graph-storage/databases-config/elasticsearch && sudo docker-compose down
cd $PHOROS_HOME/social-graph-storage/databases-config/nebula && sudo docker-compose down
cd $PHOROS_HOME/social-graph-storage/databases-config/neo4j && sudo docker-compose down
cd $PHOROS_HOME/scalable-context-aware-application && sudo docker-compose down

if ${1} == "clear"
    rm -r $PHOROS_HOME/*



