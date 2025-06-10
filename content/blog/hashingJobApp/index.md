---
title: 🚩 Pico CTF - Hashing Hob App
summary: CTF Writeup of Pico CTF - Hashing Hob App
date: 2022-01-12

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First, open up the terminal and using the following command initiate a connection with the server.


```shell
nc saturn.picoctf.net 57689
```

You have to md5 hash the presented text between quotes. To do that, you can apply this command.

```shell
echo -n "cholesterol" | md5sum
```

md5sum is used to verify file integrity and authenticity. Say for example you've downloaded an Operating System from the Internet. If you use md5sum, a string is being generated, so you can compare that with the string of the authenticated one.

```shell
md5sum Parrot-security-5.1.1_amd64.iso 
f321f27421ebb2d48a1399b1acc8b2b8  Parrot-security-5.1.1_amd64.iso
```

Lastly, convert the presented text 3 times and input it into the terminal and you will get the flag.