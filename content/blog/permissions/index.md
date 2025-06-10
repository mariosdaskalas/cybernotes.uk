---
title: 🚩 Pico CTF - Permissions
summary: CTF Writeup of Pico CTF - Permissions
date: 2022-01-17

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First, click on the button 'Launch Instance'. Then ssh to the remote machine using the presented command. Yours might be with different port or user credentials.


```shell
ssh -p 50477 picoplayer@saturn.picoctf.net
```

Then navigate to the following folder using CLI.

```shell
cd /challenge/
cat metadata.json
```

That's all!