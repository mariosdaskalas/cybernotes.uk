---
title: 🚩 Pico CTF - runme.py
summary: CTF Writeup of Pico CTF - runme.py
date: 2022-01-26

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

This challenge is extremely easy. You use wget to download the file and then run the script using Python.

If you want to learn more about wget, then in the terminal type the following.

```shell
man wget
wget https://artifacts.picoctf.net/c/34/runme.py
```

__A short description from Wikipedia:__
_GNU Wget (or just Wget, formerly Geturl, also written as its package name, wget) is a computer program that retrieves content from web servers. It is part of the GNU Project. Its name derives from "World Wide Web" and "get". It supports downloading via HTTP, HTTPS, and FTP._

```shell
python3 runme.py
```

That's all.