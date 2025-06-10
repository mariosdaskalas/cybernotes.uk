---
title: 🚩 Pico CTF - Nice Netcat
summary: CTF Writeup of Pico CTF - Nice Netcat
date: 2022-01-15

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

Run the following command.

```shell
nc mercury.picoctf.net 35652
```
returns an output of numbers in decimal format. We have to create a python script in order to convert from this decimal output to ASCII text.

First save the output to a file named flag.txt

```shell
nc mercury.picoctf.net 35652 > flag.txt
```

After that, we need to place the numbers in the same line using awk.

```shell
cat flag.txt | awk '{print}' ORS=''
```

After we got the output in the same line, here is the python script that converts decimal to ASCII text.

```python
def decimal_to_ascii(decimal_str):
    
    string_convert = ""
    for decimal_char in decimal_str.split(" "):
        string_convert += chr(int(decimal_char, 10))
    return string_convert

val = input("Enter decimal format: ")
print(decimal_to_ascii(val))
```

Name the file decimal.py and run it with the following command. In the prompt enter the decimal numbers.

```shell
python3 decimal.py
```

You got the flag!