---
title: 🚩 Pico CTF - PW Crack 2
summary: CTF Writeup of Pico CTF - PW Crack 2
date: 2022-01-19

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First, download both the files and store them in the same directory.<code>level2.py</code> and <code>level2.flag.txt.enc</code>

Then use the following command in the terminal to see the contents of the file.

```shell
nano level2.py
```

We can see that inside the function <code>level_2_pw_check</code> there is an if statement that checks the user input with a password. The password is encoded in a series of chr(). We can see that they start with 0x, which means that they are in the hexadecimal format. In this case, the chr() function returns the symbol value of the hex value.

Here is an example of the ASCII table, to better understand the conversion. [ASCII Table](https://bytetool.web.app/en/ascii/)

In my case, I got <code>if( user_pw == chr(0x33) + chr(0x39) + chr(0x63) + chr(0x65) )</code>, so open up a terminal and enter the following.

```shell
python3
print(chr(0x33) + chr(0x39) + chr(0x63) + chr(0x65))
```

Yours might be different, so change according to your situation. That in turns gives us the password we need to unlock the hidden flag. Now, just run the program and enter the password that you found from above.

```shell
python3 level2.py
```

Congrats, you've got the flag!