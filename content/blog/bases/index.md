---
title: 🚩 Pico CTF - Bases
summary: CTF Writeup of Pico CTF - Bases
date: 2022-01-02

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

What does this bDNhcm5fdGgzX3IwcDM1 mean? I think it has something to do with bases.

Run the following command in the terminal.

```shell
echo 'bDNhcm5fdGgzX3IwcDM1' | base64 -d
```

Engulf the output inside picoCTF{output}

But, let's look a little deeper. The base64 command encodes binary strings into text representations using the base64 encoding format. So, base64 is just a format that is in a sense scrambled. The parameter -d just decodes from the base64 format to plain text, that we can read.

[_base64 Description_](https://docs.oracle.com/cd/E19623-01/820-6171/base64.html)