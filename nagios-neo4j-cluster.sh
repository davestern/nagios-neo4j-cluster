#! /bin/sh
#
# Plugin for Nagios to check on neo4j enterprise cluster health
# Written by Dave Stern (dave@davestern.com)
# Last Modified: 2014-02-25

REVISION=`echo '$Revision: 1 $' | sed -e 's/[^0-9.]//g'`

print_usage() {
    echo "
Usage: nagios-neo4j-cluster 
Usage: nagios-neo4j-cluster --help | -h

Description:
"
}


