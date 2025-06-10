---
title: 🚩 Pico CTF - Static ain't always noise
summary: CTF Writeup of Pico CTF - Static ain't always noise
date: 2022-01-28

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Pico CTF**](https://play.picoctf.org)'

authors:
  - admin

tags:
  - CTF
---

Download all files, (static and ltdis.sh)

```shell
cat static
```

Provides an output that includes the flag itself. However, we will look into ltdis.sh to learn more about it.

```shell
cat ltdis.sh
```

Inside the program, we can see PHP code that we can use to our advantage.

```php
else
	echo "Disassembly failed!"
	echo "Usage: ltdis.sh <program-file>"
	echo "Bye!"
fi
```

Use the following command to give permissions to the file.
```shell
chmod +x ltdis.sh
```

Then in order to run the program use.

```shell
./ltdis.sh static
Attempting disassembly of static ...
Disassembly successful! Available at: static.ltdis.x86_64.txt
Ripping strings from binary with file offsets...
Any strings found in static have been written to static.ltdis.strings.txt with file offset
```

```shell
cat static.ltdis.strings.txt
```

Finally, we can the see the flag.