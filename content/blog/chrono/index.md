---
title: 🚩 Pico CTF - Chrono
summary: CTF Writeup of Pico CTF - Chrono
date: 2022-01-04

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First open up the terminal and connect to the server using SSH.

```shell
ssh picoplayer@saturn.picoctf.net -p 53143
```

You will have different port and password, so just enter those provided.

When you are connected to the server navigate to the following path.

```shell
cd /challenge
cat metadata.json
```

You will see the flag. Good job.