# update-hosts
This is a fork of the original hosts-update repository by zant95 on GitHub.  
You can find the original here: http://github.com/zant95/hosts-update

The project was originally licensed under the MIT license. This original  
license is included as the MIT_LICENSE file, and the original code base  
is able to be viewed by combing through the git history.

This script, designed for GNU/Linux, generates a hosts file based on multiple
sources.

## Why Fork

This fork is mainly maintained for personal use by myself, pyamsoft.  
I have pushed the changes to this fork incase anyone else desires to use  
my modifications. Much of the actual parsing code will be the same as the  
original, as I am not the strongest when it comes to regexes and string  
parsing.

The main differences being:

- Predefined blacklist of the pinion.gg domain, which is a common source of  
  intrusive advertisements in Counter Strike: Global Offensive.
- Creates a backup of the original hosts file before overwriting.
- Only supports IPv4 addresses.
- Supports parallel background downloads without reliance on programs other  
  than the standard coreutils
- Is named update-hosts instead of hosts-update
- Provides an optional pre-defined whitelist which matches uBlock0 Unbreak  
  list to fix websites which are broken by blocking certain hosts.
- Handles a list of ipset sources as well for blocking IP addresses at the  
  iptables firewall level.
- Pull hosts from extra user specified hosts files or network locations,  
  merging all files together into one large hosts file
- Output hosts or ipset files into user specified locations
- Fetches all hosts and ipset sources in parallel instead of waiting one after  
  the other

## Hosts Sources

- https://someonewhocares.org/hosts/hosts
- https://mirror1.malwaredomains.com/files/immortal_domains.txt
- https://adaway.org/hosts.txt
- https://hosts-file.net/ad_servers.txt
- https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&mimetype=plaintext
- https://pgl.yoyo.org/adservers/admiral-domains.txt
- https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt
- https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt
- https://s3.amazonaws.com/lists.disconnect.me/simple_malware.txt
- https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt
- https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
- https://raw.githubusercontent.com/EnergizedProtection/EnergizedBlu/master/energized/blu.txt
- https://zerodot1.gitlab.io/CoinBlockerLists/hosts

### Additional sources

- https://ransomwaretracker.abuse.ch/downloads/RW_DOMBL.txt
- https://raw.githubusercontent.com/EnergizedProtection/block/master/basic/formats/hosts
- https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt
- https://zeustracker.abuse.ch/blocklist.php?download=domainblocklist
- https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser
- https://zerodot1.gitlab.io/CoinBlockerLists/hosts_optional
- https://hosts-file.net/emd.txt
- https://hosts-file.net/exp.txt
- https://hosts-file.net/fsa.txt
- https://hosts-file.net/hjk.txt
- https://hosts-file.net/mmt.txt
- https://hosts-file.net/psh.txt
- http://hosts-file.net/download/hosts.txt
- http://hosts-file.net/hphosts-partial.txt

## Ipset Sources

- http://cinsscore.com/list/ci-badguys.txt
- https://www.projecthoneypot.org/list_of_ips.php?t=d&rss=1
- https://blocklist.greensnow.co/greensnow.txt
- https://lists.blocklist.de/lists/all.txt
- https://www.spamhaus.org/drop/drop.lasso
- https://check.torproject.org/cgi-bin/TorBulkExitList.py?ip=1.1.1.1
- https://www.maxmind.com/en/proxy-detection-sample-list

### Additional sources

- http://danger.rulez.sk/projects/bruteforceblocker/blist.php

## What is this for?

To prevent your computer from connecting to domains who serve ads and malware.  
This will increase the security of your computer and save bandwidth.

## Obtaining a Copy
### Using Git

1. Clone the git repository:  
```
git clone https://github.com/pyamsoft/update-hosts
git checkout master
```

### From the Shell

1. Download the raw file from the github.com URL:  
```
wget -qO- https://raw.githubusercontent.com/pyamsoft/update-hosts/master/update-hosts  
or  
curl -sL https://raw.githubusercontent.com/pyamsoft/update-hosts/master/update-hosts
```

**Note:** be sure to regularly update the hosts file for new additions or
download the script and create a scheduled task.

## Usage

1. READ THE SCRIPT FILE. Make sure that it will do what you want on YOUR
specific system.
2. Edit the white/black lists and add the wanted URLs.
3. Run the script by invoking it from the command line like so:  
```
./update-hosts
```

## Options

```
update-hosts[2.6.1]

Options:
   -h | --help     Display help
   -v | --version  Display version
   -r | --remove   Remove backups
   -i | --ipset    Also download ipset sources
   -u | --unbreak  Auto apply the unbreak whitelist
   --source        Source a hosts file part
   --output-hosts  The file to output hosts to
   --output-ipset  The file to output ipsets to
   --ipset-name    The name of the ipset
   --dest-ip       The destination IP to use
```

## Disclaimer

This script can replace the "/etc/hosts" file of your system. It will create a  
backup of the existing hosts file before hand. This script can replace the  
"/etc/ipset.conf" file of your system. It will create backups of the existing  
files before hand. Please be careful when modifying these system files.

## Issues

Check the issues page on GitHub for any notes about outstanding or existing  
issues. If you encounter a problem with update-hosts of which no such  
issue already exists please feel free to help the developer by creating an  
issue ticket.

## License

GPLv2

```

  The GPLv2 License

    Copyright (C) 2019 Peter Kenji Yamanaka
    Copyright (c) 2015 Héctor Molinero Fernández

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

```
