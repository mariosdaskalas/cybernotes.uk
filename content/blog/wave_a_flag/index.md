---
title: 🚩 Pico CTF - Wave A Flag
summary: CTF Writeup of Pico CTF - Wave A Flag
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

Download the warm program.

```shell
cat warm;
```
returns Hello user! Pass me a -h to learn what I can do!-hOh, help? I actually don't do much, but I do have this flag here:

We can already see the flag here, but we can take it a step further. Give permissions of the executable with:

```shell
chmod +x warm
```

```shell
./warm -h
```
returns the flag.