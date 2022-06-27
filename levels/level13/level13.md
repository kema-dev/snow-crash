# level 13

1. examinate existing files permissions

```shell
ls -la
```

shows an executable which is flag13:level13

2. get the executable (from an external device)

```shell
scp -P 4242 level13@<host>:level03 level13
```

3. Decompile binary and examine the resulting code

```shell
/opt/retdec/bin/retdec-decompiler.py level03
```

shows `if (getuid() == 0x1092) { return printf("your token is %s\n", (char *)ft_des("boe]!ai0FB@.:|L6l@A?>qJ}I"));}` which means that token is given if getuid() is 0x1092 (=4242 as int)

4. Copy and paste exploit.c, then compile it is as a shared library

```shell
gcc -shared -fPIC exploit.c -o exploit.so
```

`-fPIC` is needed to make the library loadable by the program at any location

5. Run the exploit and get the flag

ltrace or another program is needed to load our exploit.so library with our LD_PRELOAD environment variable

```shell
export LD_PRELOAD=/tmp/exploit.so; ltrace ~/level13
```

gives flag `2A31L79asukciNyi8uppkEuSx`
