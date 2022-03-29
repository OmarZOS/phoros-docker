#!bin/bash

# main components
git clone https://github.com/OmarZOS/social-graph-storage
git clone https://github.com/OmarZOS/data-transformation-reverse-proxy
git clone https://github.com/OmarZOS/remote-extraction-proxy-and-worker
git clone https://github.com/OmarZOS/phoros-rest-server
git clone https://github.com/OmarZOS/scalable-context-aware-application

# optional components
git clone https://github.com/OmarZOS/phoros-dashboard
git clone https://github.com/OmarZOS/phoros-extension

export PHOROS_HOME=$(pwd)
