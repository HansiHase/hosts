#!/bin/bash

# path where the original hosts file was generated ([Wo]rk [Pa]th)
# usually path of the hosts-repo
WOPA=~/myHostsFileGenerator

H_MERGE=$WOPA/hosts-ipv4-ipv6	# the ipv6 and ipv4 smashed together file
H_ORIG=$WOPA/hosts		# the original file containing 0.0.0.0 entries

echo	"building base file"
python	$WOPA/updateHostsFile.py -a

echo 	"building ipv4 hostsfile"
echo 	"127.0.0.1 localhost" > $H_MERGE
sort 	$H_ORIG | uniq | grep "^0" >> $H_MERGE

echo 	"ipv4 hosts:"
cat 	$H_MERGE | wc -l

echo    "building ipv6 + ipv4 hostsfile"
sort   	$H_ORIG | uniq | grep "^0" | sed "s/0\.0\.0\.0/::/g" >> $H_MERGE

echo    "ipv6 + ipv4 hosts"
cat     $H_MERGE | wc -l

echo 	"fin"
