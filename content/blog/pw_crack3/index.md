---
title: 🚩 Pico CTF - PW Crack 3
summary: CTF Writeup of Pico CTF - PW Crack 3
date: 2022-01-20

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
level3.py
level3.flag.txt.enc
level3.hash.bin
```

Now let's open up the main file which is the level3.py

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

flag_enc = open('level3.flag.txt.enc', 'rb').read()
correct_pw_hash = open('level3.hash.bin', 'rb').read()


def hash_pw(pw_str):
    pw_bytes = bytearray()
    pw_bytes.extend(pw_str.encode())
    m = hashlib.md5()
    m.update(pw_bytes)
    return m.digest()


def level_3_pw_check():
    user_pw = input("Please enter correct password for flag: ")
    user_pw_hash = hash_pw(user_pw)
    
    if( user_pw_hash == correct_pw_hash ):
        print("Welcome back... your flag, user:")
        decryption = str_xor(flag_enc.decode(), user_pw)
        print(decryption)
        return
    print("That password is incorrect")



level_3_pw_check()


# The strings below are 7 possibilities for the correct password. 
#   (Only 1 is correct)
pos_pw_list = ["f09e", "4dcf", "87ab", "dba8", "752e", "3961", "f159"]
```

By reading and understanding the code, we can see that there is a list that contains 7 possible values that promises to unlock the program and gives us the flag for that level. We could try each of them and finally find the answer, but imagine if we would have 1000 possible values. What then? We need to automate things. So, let's proceed.

We notice that the check happens at the level_3_pw_check function. So let's isolate it and focus on that.

```python
def level_3_pw_check():
    user_pw = input("Please enter correct password for flag: ")
    user_pw_hash = hash_pw(user_pw)
    
    if( user_pw_hash == correct_pw_hash ):
        print("Welcome back... your flag, user:")
        decryption = str_xor(flag_enc.decode(), user_pw)
        print(decryption)
        return
    print("That password is incorrect")
```

At first it takes an input, which has to be one of the 7 possible values. We could move the list at the start of the function and then loop through all these values. Easy...

```python
def level_3_pw_check():

    # The code below is altered.

    pos_pw_list = ["f09e", "4dcf", "87ab", "dba8", "752e", "3961", "f159"]

    for i in range(0, len(pos_pw_list)):

    # user_pw = input("Please enter correct password for flag: ")
        user_pw = pos_pw_list[i]
        user_pw_hash = hash_pw(user_pw)
        
        if( user_pw_hash == correct_pw_hash ):
            print("Welcome back... your flag, user:")
            decryption = str_xor(flag_enc.decode(), user_pw)
            print(decryption)
            return
        print("That password is incorrect")
```

Finally, use terminal to run the python program.

```shell
python3 level3.py
```

Nice try, you've got the flag! 🚩