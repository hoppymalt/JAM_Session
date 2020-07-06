---
layout: default
title: WiFi Attacks
parent: Attacks
nav_order: 5
---

# WiFi Attacks
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Basics
List available interfaces
```
ip link show
```
List available interfaces
```
iwconfig
```
Kill annoying processes
```
airmon-ng check kill
```
Monitor mode
```
airmon-ng start wlan0
```
Managed mode
```
airmon-ng stop wlan0mon
```
Scan (default 2.4Ghz)
```
airodump-ng wlan0mon
```
Scan 5Ghz
```
airodump-ng wlan0mon --band a
```
Put in mode monitor
```
iwconfig wlan0 mode monitor
```
Quit mode monitor - managed mode
```
iwconfig wlan0mon mode managed 
```
Scan available wifis
```
iw dev wlan0 scan | grep "^BSS\|SSID\|WSP\|Authentication\|WPS\|WPA"
```


