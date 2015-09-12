# update-hosts
This is a fork of the original hosts-update repository by zant95 on GitHub.  
You can find the original here: http://github.com/zant95/hosts-update

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
  intrusive advertisements Counter Strike: Global Offensive.
- Creates a backup of the original hosts file before overwriting.
- Only supports IPv4 addresses.

## Hosts Sources

- http://winhelp2002.mvps.org/hosts.txt
- http://someonewhocares.org/hosts/hosts
- http://hosts-file.net/download/hosts.txt
- http://www.malwaredomainlist.com/hostslist/hosts.txt
- http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&mimetype=plaintext
- http://adaway.org/hosts.txt
- http://malwaredomains.lehigh.edu/files/justdomains

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

## From the Shell
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

## Disclaimer
This script replaces the "/etc/hosts" file of your system. It will create a  
backup of the existing hosts file before hand. This being said, please be sure  
to be careful when modifying the hosts file.

## Questions

Questions or issues should be either posted in the issue section of this  
repository, or directed by email to pyamsoft @ pyam(dot)soft(at)gmail(dot)com

## Issues

Check the issues page on GitHub for any notes about outstanding or existing  
issues. If you encounter a problem with update-hosts of which no such  
issue already exists please feel free to help the developer by creating an  
issue ticket.

## License

MIT  
See the [license](https://raw.githubusercontent.com/pyamsoft/update-hosts/master/LICENSE) file.

