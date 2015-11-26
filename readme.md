**NOPROMPT BRANCH - for automated use with crontab**

**uncommented all prompts in updateHostsFile.py, added scripts**

**update sources, merge, no excl., no copy, no questions**

* `mergeIpv4Ipv6.sh` = generates IPv4+IPv6 hostsfile from IPv4 hostsfile
* `updateHostsFileAndBuildIpv6.sh` = runs updateHostsFile.py, generates IPv4+IPv6 hostsfile


if you wanna use it:
* both need path adjustment in script (first variable(s))
* either write a script to copy new file to /etc/hosts
* or soft link from new file to /etc/hosts
* `mergeIpv4Ipv6.sh` new file (hosts-ipv4-ipv6) will be in directory of updateHostFile.py
* `updateHostsFileAndBuildIpv6.sh` new file (hosts) will be in directory you defined as workpath in the script
