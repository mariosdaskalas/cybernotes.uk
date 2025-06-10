---
title: 🚩 Pico CTF - PW Crack 1
summary: CTF Writeup of Pico CTF - PW Crack 1
date: 2022-01-18

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First, dowload both the files in store them in the same directory. (<code>level1.py</code> and <code>level1.flag.txt.enc)</code>.

Open up the level1.py using your favorite editor or with the following command from the terminal.

```shell
nano level1.py
```


```python
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

flag_enc = open('level1.flag.txt.enc', 'rb').read()

def level_1_pw_check():
    user_pw = input("Please enter correct password for flag: ")
    if( user_pw == "1e1a"):
        print("Welcome back... your flag, user:")
        decryption = str_xor(flag_enc.decode(), user_pw)
        print(decryption)
        return
    print("That password is incorrect")

level_1_pw_check()
```

If you look at the function <code>level_1_pw_check</code>, the password is hidden into plain sight, inside the if statement.

```python
if( user_pw == "1e1a"):
```

Finally, run the python script and enter the above password using the following command.

```shell
python3 level1.py
```

Congrats, you've got the flag!