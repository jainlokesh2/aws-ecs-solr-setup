#!/bin/bash

set -e

DEFAULT_VALUE=1

NODE_DIR="/data/solr/node"${NODE:=${DEFAULT_VALUE}}"/solr/"

exec /opt/solr/bin/solr -f -force  -cloud -s $NODE_DIR -p 8983 -z $ZK_HOST
