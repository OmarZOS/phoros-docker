#!bin/bash


# use "./launch.sh --build" to rebuild all images

#PHOROS_HOME=$(pwd)

cd $PHOROS_HOME/scalable-context-aware-application && sudo docker-compose up -d ${1}

cd $PHOROS_HOME/social-graph-storage/databases-config/neo4j && sudo docker-compose up -d ${1}
#cd $PHOROS_HOME/social-graph-storage/databases-config/nebula && sudo docker-compose up -d ${1}
#cd $PHOROS_HOME/social-graph-storage/databases-config/elasticsearch && sudo docker-compose up -d ${1}

cd $PHOROS_HOME/social-graph-storage && sudo docker-compose up -d ${1}
cd $PHOROS_HOME/data-transformation-reverse-proxy && sudo docker-compose up -d ${1}
cd $PHOROS_HOME/remote-extraction-proxy-and-worker && sudo docker-compose up -d ${1}
cd $PHOROS_HOME/phoros-rest-server && sudo docker-compose up -d ${1}

