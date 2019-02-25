#!/bin/bash
awk '{
        for(i=1; i<=NF; i++) {
            print $i
        }
}' $1|awk '{match($0,/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/); ip = substr($0,RSTART,RLENGTH); print ip}'|sed -e '/^$/d'