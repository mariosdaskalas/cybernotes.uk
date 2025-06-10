---
title: 🚩 Pico CTF - Big Zip
summary: CTF Writeup of Pico CTF - Big Zip
date: 2022-01-03

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First use wget to download the big-zip-files.zip file. Then unzip it.

```shell
wget https://artifacts.picoctf.net/c/503/big-zip-files.zip
unzip -u big-zip-files.zip
```

There are a lot of files. We can not search all of them manually for a flag. So we can use the following command instead that searches the contents of each file for a specific string pattern. We know that each flag follows this format -> picoCTF{random}


```shell
grep -rnw '/home/username/big-zip-files'/ -e 'picoCTF*'
```

The asterisk (*) after picoCTF searches for every string that has any combination of characters after that. For example, picoCTF{123} or picoCTF3ld/3#21. It can be anything.

Nice, you've got the flag.