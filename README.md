nagios-neo4j-cluster
====================


nagios plugin for checking neo4j cluster health.

The plugin takes a comma-separated list of cluster member servers. It assumes
that there should be exactly one master and exactly (total servers - 1) slaves.

It will produce critical alerts if either of these conditions is not true or
any of the servers cannot be reached.


## Usage

```
Usage: /usr/bin/perl check_neo4j_cluster -s host1[,host2,etc] [-a path] [-P port] [-h this help message]

    -a Optional: Path to "available". Default: /db/manage/server/ha/available
    -h This help message
    -P Optional: Port. Default: 7474
    -s Required: Comma-separated list of servers to check
```

## TODO:

  - Explicit errors if users cannot be reached
  - License & Version history
