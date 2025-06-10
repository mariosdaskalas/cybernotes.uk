---
title: 🚩 Pico CTF - strings it
summary: CTF Writeup of Pico CTF - strings it
date: 2022-01-29

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

Download strings file and type the following command in the terminal.

```shell
strings strings | grep picoCTF
```

If you want to learn more about strings type the following command.

```shell
man strings
```

So, in a sense the strings command prints printable strings in a binary or object file. The second part of the command | grep picoCTF just searches through the file and prints the string that contains picoCTF.

Nice, you've got the flag!