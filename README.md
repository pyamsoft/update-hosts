# hosts-update
This script, designed for GNU/Linux, generates a hosts file based on multiple
sources.

## Hosts Sources

- http://winhelp2002.mvps.org/hosts.txt
- http://someonewhocares.org/hosts/hosts
- http://hosts-file.net/ad_servers.txt
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
	git clone https://github.com/pyamsoft/hosts-update

2. Checkout the custom git branch:  
	git checkout custom

## Using wget
1. Download the raw file from the github.com URL:  
	wget -qO- https://raw.githubusercontent.com/pyamsoft/hosts-update/custom/hosts-update

**Note:** be sure to regularly update the hosts file for new additions or
download the script and create a scheduled task.

## Usage
1. READ THE SCRIPT FILE. Make sure that it will do what you want on YOUR
specific system.
2. Edit the white/black lists and add the wanted URLs.
3. Run the script by invoking it from the command line like so:  
    ./hosts-update

## Disclaimer
This script replaces the "/etc/hosts" file of your system. I am not  
responsible for any damage or loss, always make backups.

## Questions

Questions or issues should be either posted in the issue section of this  
repository, or directed by email to pyamsoft @ pyam(dot)soft(at)gmail(dot)com

## Issues

Check the issues page on GitHub for any notes about outstanding or existing  
issues. If you encounter a problem with hosts-update of which no such  
issue already exists please feel free to help the developer by creating an  
issue ticket.

## License

MIT  
See the [license](https://raw.githubusercontent.com/pyamsoft/hosts-update/custom/LICENSE) file.

