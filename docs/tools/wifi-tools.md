---
layout: default
title: WiFi Tools
parent: Tools
nav_order: 5
---

# WiFi Tools
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

#### [\[Script\] Install all](https://github.com/caioMichele/JAM_Session/blob/master/docs/Scripts/Installers/Install-WiFi-Tools.sh)

---

#### EAPHammer
```
git clone https://github.com/s0lst1c3/eaphammer.git
./kali-setup
```

#### Airgeddon
```
git clone --depth 1 https://github.com/v1s1t0r1sh3r3/airgeddon.git
```

From docker
```
docker run \
          --rm \
          -ti \
          --name airgeddon \
          --net=host \
          --privileged \
          -p 3000:3000 \
          -v /path/to/some/dir/on/your/host:/io \
          -v /path/to/another/dir/on/your/host:/opt/airgeddon/plugins \
          -e DISPLAY=$(env | grep DISPLAY | awk -F "=" '{print $2}') \
          v1s1t0r1sh3r3/airgeddon
```

