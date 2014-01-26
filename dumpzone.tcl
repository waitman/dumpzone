#!/usr/local/bin/tclsh8.6

package require sqlite3

if {$argc!=1} {
        puts stderr "Usage: $argv0 DOMAIN"
        exit 1
}

sqlite3 db /var/bind10/zone.sqlite3

puts "\$TTL 86400"

set stmt "SELECT * FROM zones WHERE name='[lindex $argv 0].'"

db eval $stmt x {
        set stmt "SELECT * FROM records WHERE zone_id=$x(id)"
        db eval $stmt y {
                puts "$y(name)\t$y(rdtype)\t$y(rdata)"
        }
        puts ""
}
db close

