---
title: 🚩 Pico CTF - what's a net cat?
summary: CTF Writeup of Pico CTF - what's a net cat?
date: 2022-02-03

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

Using netcat (nc) is going to be pretty important. Can you connect to jupiter.challenges.picoctf.org at port 25103 to get the flag?

Open up the terminal and type the following command.

```shell
nc jupiter.challenges.picoctf.org 25103
```

You've got the flag. If you want to learn more about nc type the following command to the terminal.

```shell
man nc
```