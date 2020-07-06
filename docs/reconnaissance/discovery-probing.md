---
layout: default
title: Discovering and Probing
parent: Reconnaissance
nav_order: 2
---

# Discovering and Probing
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc} 

---
## OSINT
* [https://osintframework.com/](https://osintframework.com/)
* [https://psbdmp.ws/](https://psbdmp.ws/) (Pastebin search)

## Discovering hosts
### ICMP
4 echo requests to a host
```
ping -c 1 <IP>
``` 
Send echo requests to ranges
```
fping -g 10.10.10.0/24
```
Send echo, timestamp requests and subnet mask requests
```
nmap -PEPM -sP -n 10.10.10.0/24 
```


### Port Discovery
TCP
```
masscan -p20,21-23,25,53,80,110,111,135,139,143,443,445,993,995,1723,3306,3389,5900,8080 10.10.10.0/24
```
```
nmap -p20,21-23,25,53,80,110,111,135,139,143,443,445,993,995,1723,3306,3389,5900,8080 10.10.10.0/24
```
UDP
```
nmap -sU -sV --version-intensity 0 -F -n 10.10.10.0/24
```


## Discovering hosts (Internal)

### Passive 
```
netdiscover -p
```
Bettercap
```
net.recon on
set net.show.meta true
net.show
```

### Active 
#### ARP discovery
```
arp-scan 10.10.10.0/24 | tee arp_scan.txt
```
```
udp-proto-scanner.pl 10.10.10.0/24 | tee udp_proto.txt
```
```
nmap -sn 10.10.10.0/24
```
```
netdiscover -r 10.10.10.0/24
```

#### NBT discovery
Search in Domain
```
nbtscan -r 192.168.0.1/24 
```
Bettercap
```
net.probe on
net.show
```
IPv6: Send a pingv6 to multicast:
```
ping6 -c4 -I eth0 ff02::1 | tee ipv6.txt
```
```
cat ipv6.txt | cut -d" " -f4 | sort -u | grep fe | sed s'/:$//' | tee ipv6_list.txt
```

## Scanning

Nmap
```
nmap -sV -sC -O -T4 -n -Pn -p- -oA fullfastscan <IP> 
```
```
nmap -sU -sV -sC -n -F -T4 <IP> 
```
Bettercap
```
syn.scan 10.10.10.0/24 1 10000
```

## Enumerating and Probing Users
Domain
```
nmblookup -A <DC_IP>
``` 
Extract names and 
```
python namemesh.py names.txt | tee ~/usernames.txt
```
```
nmap -p88 -nvv --script=krb5-enum-users --script-args krb5-enum-users.realm='<DOMAIN>',userdb=/root/usernames.txt <DC_IP>
```