#!/bin/bash
set -e
DEFAULT_VALUE=1

NODE_DIR="/data/solr/node"${NODE:=${DEFAULT_VALUE}}"/solr/"


mkdir -p  $NODE_DIR


if [ -d "$NODE_DIR" ]; then

  echo " Control will enter here if $DIRECTORY exists." 
  cp -n /opt/solr/server/solr/solr.xml $NODE_DIR
  cp -n /opt/solr/server/solr/zoo.cfg  $NODE_DIR
else
 exit 404

fi
