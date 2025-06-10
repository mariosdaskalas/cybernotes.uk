---
title: 🚩 Pico CTF - First Find
summary: CTF Writeup of Pico CTF - First Find
date: 2022-01-07

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

First use wget to download the files.zip

```shell
wget https://artifacts.picoctf.net/c/500/files.zip
```

Extract the file using zip.

```shell
unzip -u files.zip
```

After that you will get a list of all the available folders and files that look like this.

```shell
Archive:  files.zip
   creating: files/
   creating: files/satisfactory_books/
   creating: files/satisfactory_books/more_books/
  inflating: files/satisfactory_books/more_books/37121.txt.utf-8  
  inflating: files/satisfactory_books/23765.txt.utf-8  
  inflating: files/satisfactory_books/16021.txt.utf-8  
  inflating: files/13771.txt.utf-8   
   creating: files/adequate_books/
   creating: files/adequate_books/more_books/
   creating: files/adequate_books/more_books/.secret/
   creating: files/adequate_books/more_books/.secret/deeper_secrets/
   creating: files/adequate_books/more_books/.secret/deeper_secrets/deepest_secrets/
 extracting: files/adequate_books/more_books/.secret/deeper_secrets/deepest_secrets/uber-secret.txt  
  inflating: files/adequate_books/more_books/1023.txt.utf-8  
  inflating: files/adequate_books/46804-0.txt  
  inflating: files/adequate_books/44578.txt.utf-8  
   creating: files/acceptable_books/
   creating: files/acceptable_books/more_books/
  inflating: files/acceptable_books/more_books/40723.txt.utf-8  
  inflating: files/acceptable_books/17880.txt.utf-8  
  inflating: files/acceptable_books/17879.txt.utf-8  
  inflating: files/14789.txt.utf-8
```

The exercise instructs us to open the file 'uber-secret.txt'

We can always use cd and then cat to move to the specified directory and view its contents. The command is the following.

```shell
cat files/adequate_books/more_books/.secret/deeper_secrets/deepest_secrets/uber-secret.txt
```

But we can use another command to search through subfolders of a specified directory.


```shell
pwd
```
Use pwd to find your current working directory.

For example if the unzip folders and files of the above .zip file are located inside the home directory you can use the following command, in order to search for the file.


```shell
find ~/ -name "uber-secret.txt"
```

Nice, you've got the flag!