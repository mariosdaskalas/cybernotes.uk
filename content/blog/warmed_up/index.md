---
title: 🚩 Pico CTF - Warmed Up
summary: CTF Writeup of Pico CTF - Warmed Up
date: 2022-02-02

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

What is 0x3D (base 16) in decimal (base 10)?

There is a thing called ASCII table that contains data in different formats. For example, the ASCII 65 corresponds to the HEX -> 41 and the symbol 'A'. These values are all equal, but in different representations.

You can take a look at [ASCII Codes Table](https://ascii.cl/).
![ASCII Codes Table](/ascii_hex.png "ASCII Codes Table")
Image Credit: [ASCII Codes Table](https://ascii.cl/)

You have to keep in mind that hex values can start with 0x. It is just a standard. So, 0x3D and 3D in hex are the same.

We look at the table and see that the hex value 3D, corresponds to the decimal value '61'. We know that the flag format is 'picoCTF{22}'. So, just replace the number '22' in our example, by the decimal number '61'.