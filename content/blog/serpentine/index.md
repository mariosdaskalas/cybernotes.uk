---
title: 🚩 Pico CTF - Serpentine
summary: CTF Writeup of Pico CTF - Serpentine
date: 2022-01-27

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

Use wget to download the Python file.

__A short description from Wikipedia:__
_GNU Wget (or just Wget, formerly Geturl, also written as its package name, wget) is a computer program that retrieves content from web servers. It is part of the GNU Project. Its name derives from "World Wide Web" and "get". It supports downloading via HTTP, HTTPS, and FTP._

```shell
man wget
wget https://artifacts.picoctf.net/c/37/serpentine.py
```

```shell
sudo nano serpentine.py
```

Inspect the source code of the Python file and just in the second if statement add this.

```python
elif choice == 'b':
    print('\nOops! I must have misplaced the print_flag function! Check my source code!\n\n')
    print(f"{print_flag()}")
```

All the information was there. We just need to print out the flag.