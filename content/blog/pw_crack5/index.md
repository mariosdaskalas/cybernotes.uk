---
title: 🚩 Pico CTF - PW Crack 5
summary: CTF Writeup of Pico CTF - PW Crack 5
date: 2022-01-22

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First, download all the files provided. They are the following. All of them are needed to live in the same directory in order for this to work.

```shell
level5.py
level5.flag.txt.enc
level5.hash.bin
dictionary.txt
```

Now let's open up the main file which is the level5.py

```python
import hashlib

### THIS FUNCTION WILL NOT HELP YOU FIND THE FLAG --LT ########################
def str_xor(secret, key):
    #extend key to secret length
    new_key = key
    i = 0
    while len(new_key) < len(secret):
        new_key = new_key + key[i]
        i = (i + 1) % len(key)        
    return "".join([chr(ord(secret_c) ^ ord(new_key_c)) for (secret_c,new_key_c) in zip(secret,new_key)])
###############################################################################

flag_enc = open('level5.flag.txt.enc', 'rb').read()
correct_pw_hash = open('level5.hash.bin', 'rb').read()


def hash_pw(pw_str):
    pw_bytes = bytearray()
    pw_bytes.extend(pw_str.encode())
    m = hashlib.md5()
    m.update(pw_bytes)
    return m.digest()


def level_5_pw_check():
    user_pw = input("Please enter correct password for flag: ")
    user_pw_hash = hash_pw(user_pw)
    
    if( user_pw_hash == correct_pw_hash ):
        print("Welcome back... your flag, user:")
        decryption = str_xor(flag_enc.decode(), user_pw)
        print(decryption)
        return
    print("That password is incorrect")



level_5_pw_check()


```

This time, we have an external .txt file, which is a dictionary containing possible values that unlock the flag.

```python
f = open("dictionary.txt")
dictionary = f.readlines()
n_list = []

for i in dictionary:
    n_list.append(i.strip())

for item in range(0, len(n_list)):
    print(n_list[item])

f.close()
```

First, we open the file, and then read all its contents. After that, we append each value to an empty list and print each value. Finally, through a loop we pass each value as an input to the program.

```python
 for item in range(0, len(n_list)):
        user_pw = n_list[item]
        user_pw_hash = hash_pw(user_pw)
```

```shell
python3 level5.py
```

Nice, you've got the flag!
