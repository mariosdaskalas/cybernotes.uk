---
title: 🚩 Pico CTF - Mod 26
summary: CTF Writeup of Pico CTF - Mod 26
date: 2022-01-24

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

We are being presented with the following description 
"Cryptography can be easy, do you know what ROT13 is?" and the following text.

cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_Ncualgvd}

This is a cipher text, meaning that the letters of the alphabet need to be 'moved' 13 places forward, in order to decrypt the message.

Now, open up the terminal, making sure that you have python3 installed.

If you don't in the terminal type the following command.

```shell
sudo apt-get install python3
```

Then, in the terminal write the following.

```shell
python3
import codecs
codecs.encode("cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_Ncualgvd}", 'rot_13')
```

Well done! You've got the flag.