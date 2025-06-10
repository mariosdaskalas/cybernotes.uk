---
title: 🚩 Pico CTF - Magikarp Ground Mission
summary: CTF Writeup of Pico CTF - Magikarp Ground Mission
date: 2022-01-13

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

In this ctf, we will learn about SSH, ls and cat. If you know nothing about these terms, do not worry, we will cover them right now.

You can always use the following commands to learn more about them in the terminal.

```shell
man ssh
```

```shell
man ls
```

In a short, ssh is a program that has the purpose of logging into a remote machine and executes commands that the user wants.

For example, if we have a server pointing to the IP, 192.168.2.7 and there is a user named _root_ then we can connect to it by using the following command.

```shell
ssh root@192.168.2.7
```

Notice, here that we may be prompted for a password. If that's the case, type the password of the user _root_ and we are logged in via the terminal into that remote machine.

_ls_ is pretty straightforward and simple. In your terminal, type _ls_ and all of your directories inside that path are being listed.

For example, imagine you are on the path /.

If you type ls, you will get a result similar to this.

```shell
bin   cdrom  etc   lib    lib64   lost+found  mnt  proc  run   snap  sys  usr
boot  dev    home  lib32  libx32  media       opt  root  sbin  srv   tmp  var
```

Now, let's continue into some real action. Click on "Launch Istance". Below 'Challenge Endpoints" there is an SSH field generated. It will look similar to this.

```shell
ssh ctf-player@venus.picoctf.net -p 52830
```

Enter the above command to the terminal with the password: b60940ca. If prompted type _yes_.

You are now connected to that remote machine somewhere on the world.

First thing that we will do is to type _ls_ to see the folders and files of our path.

```shell
cat instructions-to-2of3.txt
```

It notifies us to go the root, which is the same as /.

If we execute the following command, we can see the first part of the flag.

```shell
cat 1of3.flag.txt
```

After that type the following to go the root or /.

```shell
cd /
```

Again, list the contents of the root folder with _ls_.

```shell
cat 2of3.flag.txt
```

```shell
cat instructions-to-3of3.txt
```

That file instructs us to go to the home folder or ~. Home and ~ is the same thing.

```shell
cd ~
```

List the folders once again.

```shell
cat 3of3.flag.txt
```

Congratulations! You got the final part of the flag. Now, you combine all these flags in order, to product the final flag.

A little bonus at the end...

If you want to automate the above solution, you can run the following commands. Do not worry, I will explain what each of them do later.

```shell
cat 1of3.flag.txt >> /home/ctf-player/drop-in/flag.txt
cd /
cat 2of3.flag.txt >> /home/ctf-player/drop-in/flag.txt
cd ~
cat 3of3.flag.txt >> /home/ctf-player/drop-in/flag.txt
cd /home/ctf-player/drop-in/
cat flag.txt | tr -d '\r\n'
```

In the first command, the command _cat_ displays the contents of a file in the terminal.

 The >> symbol just writes that content into a file named flag.txt located in /home/ctf-player/drop-in
We write three times to that file (flag.txt) and then with the last command, we display all of these contents into the same line. That's the flag.