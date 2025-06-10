---
title: 🚩 Pico CTF - 2Warm
summary: CTF Writeup of Pico CTF - 2Warm
date: 2023-10-27

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

{{< toc mobile_only=true is_open=true >}}

Can you convert the number 42 (base 10) to binary (base 2)?

Every decimal number has a representation in a binary form. For example, take the number 3, which is in the decimal format. In the binary form it is equal to '11'.

If you want to learn about this, I recommend look at the table below. 

[Decimal/Binary Conversion Table](https://www.exploringbinary.com/decimal-binary-conversion-table/).

![Decimal/Binary Conversion Table](/decimal_to_binary.png "Decimal/Binary Conversion Table")
Image Credit: [Decimal/Binary Conversion Table](https://www.exploringbinary.com/)

```python
print(bin(42)[2:])
```

The program above converts the decimal number '42' to it's binary representation. Nice, you've got the flag!