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

## Example

```
/usr/bin/perl /usr/lib/nagios/plugins/check_neo4j_cluster -sdb-01.domain.com,db-02.domain.com,db-04.domain.com
```

If you have changed the protocol, port or path, add the following options:

```
/usr/bin/perl /usr/lib/nagios/plugins/check_neo4j_cluster -shttps://db-01.domain.com,https://db-02.domain.com,https://db-04.domain.com \
-P7475 -a/path/to/available
```


## CHANGELOG

### Version 0.1 – April 7, 2014

  - Initial release.

## License

MIT: http://davestern.mit-license.org
