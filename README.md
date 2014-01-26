```
dumpzone.tcl 
Dumps the records for a zone in BIND10 to stdout in hosts file format


> ./dumpzone.tcl bethatkid.net
$TTL 86400
bethatkid.net.  SOA     a.managean.com. ns\@waitman.net. 2014012107 28800 7200 1209600 86400
bethatkid.net.  NS      a.managean.com.
bethatkid.net.  NS      b.managean.com.
bethatkid.net.  NS      c.managean.com.
bethatkid.net.  MX      0 p.umatar.com.
bethatkid.net.  A       64.34.197.15
www.bethatkid.net.      A       64.34.197.15
*.bethatkid.net.        CNAME   www.bethatkid.net.

> ./dumpzone.tcl bethatkid.net > bethatkid.net.hosts

> named-checkzone bethatkid.net bethatkid.net.hosts
zone bethatkid.net/IN: loaded serial 2014012107
OK
```
