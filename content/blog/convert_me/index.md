---
title: 🚩 Pico CTF - Convert Me
summary: CTF Writeup of Pico CTF - Convert Me
date: 2022-01-06

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First, download the convert.py file. Run it with the folllowing command.

```shell
python3 convert.py
```

You are prompted with the following text.

If 15 is in decimal base, what is it in binary base?

Every decimal number has a representation in a binary form. For example, take the number 3, which is in the decimal format. In the binary form it is equal to '11'.

If you want to learn about this, I recommend look at the table below. 

[Decimal/Binary Conversion Table](https://www.exploringbinary.com/decimal-binary-conversion-table/).

![Decimal/Binary Conversion Table](/decimal_to_binary.png "Decimal/Binary Conversion Table")
Image Credit: [Decimal/Binary Conversion Table](https://www.exploringbinary.com/)

```shell
python3
print(bin(15)[2:])
```

The program above converts the decimal number '15' to it's binary representation. Enter that value as an answer to the convert.py file.

 Nice, you've got the flag!