# level 13

## Vulnerability: Library injection

level12's password: `g1qKMiRpXf53AWhDaU7FEkczr`

1. examinate existing files and permissions

```shell
ls -la
```

shows an executable which is flag13:level13

2. get the executable (from an external device), decompile it using [retdec](https://github.com/avast/retdec) and examine the resulting code

```shell
scp -P 4242 level13@<host>:level03 level13
retdecomp level03
```

shows `if (getuid() == 0x1092) { return printf("your token is %s\n", (char *)ft_des("boe]!ai0FB@.:|L6l@A?>qJ}I"));}` which means that token is given if getuid() is 0x1092 (=4242 as int)

3. Copy and paste exploit.c, then compile it is as a shared library

```shell
gcc -shared -fPIC exploit.c -o exploit.so
```

`-fPIC` is needed to make the library loadable by the program at any location

4. Run the exploit and get the flag

ltrace or another program is needed to load our exploit.so library with our LD_PRELOAD environment variable

```shell
export LD_PRELOAD=/tmp/exploit.so; ltrace ~/level13
```

gives flag `2A31L79asukciNyi8uppkEuSx`
