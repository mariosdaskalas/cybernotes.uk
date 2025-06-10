---
title: 🚩 Pico CTF - Let's Warm Up
summary: CTF Writeup of Pico CTF - Let's Warm Up
date: 2022-02-01

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

If I told you a word started with 0x70 in hexadecimal, what would it start with in ASCII?

There is a thing called ASCII table that contains data in different formats. For example, the ASCII 65 corresponds to the HEX -> 41 and the symbol 'A'. These values are all equal, but in different representations.

You can take a look at [ASCII Codes Table](https://ascii.cl/).
![ASCII Codes Table](/ascii_hex.png "ASCII Codes Table")
Image Credit: [ASCII Codes Table](https://ascii.cl/)

You have to keep in mind that hex values can start with 0x. It is just a standard. So, 0x70 and 70 in hex are the same.

We look at the table and see that the hex value 70, corresponds to the symbol 'p'. We know that the flag format is 'picoCTF{hello}'. So, just replace the world 'hello' with the symbol that corresponds the hex value 0x70.