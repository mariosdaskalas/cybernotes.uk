---
title: 🚩 Pico CTF - Glitch Cat
summary: CTF Writeup of Pico CTF - Glitch Cat
date: 2022-01-11

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

Open up the terminal and type the following command.

```shell
nc saturn.picoctf.net 51109
```

You will get an output. Copy that output and open up a terminal and type the following command.

```shell
python3
print('picoCTF{gl17ch_m3_n07_' + chr(0x62) + chr(0x64) + chr(0x61) + chr(0x36) + chr(0x38) + chr(0x66) + chr(0x37) + chr(0x35) + '}')
```

The output you get from nc might look something different. The point is to understand what you are doing.

If you want to learn more about nc type in the terminal the following command.

```shell
man nc
```

There is something called ASCII table, that is in a sense different mappings of the same representation. For example, the Decimal 98 is the same as 0x62 in the hexadecimal format and the ASCII character for that is 'b'. Here is a link for the ASCII table in detail. So, to make things simpler, 0x62 is equal to 'b', chr(0x64) is equal to 'd' and so on. That's how we fill in the remaining characters of the flag.

![ASCII Table](/ascii_table.png "ASCII Table")
Image Credit: [ASCII Table](https://ss64.com/ascii.html)