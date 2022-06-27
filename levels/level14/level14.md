# level 13

## Vulnerability: No obfuscation

level12's password: `2A31L79asukciNyi8uppkEuSx`

1. examinate existing files and permissions

```shell
ls -la
```

shows an empty directory, maybe we should work on the geflag function

2. locate the binary

```shell
which getflag
```

returns `/bin/getflag`

2. get the executable (from an external device), decompile it using [retdec](https://github.com/avast/retdec) and examine the resulting code

```shell
scp -P 4242 level14@<host>:/bin/getflag .
retdecomp getflag
```

shows as list of flags in a switch statement

4. use gdb and jump to uid 3014's flag printing part (3000+ uids are user created accounts, 3014 is the last one and looks like 3000 + 14)

```shell
gdb getflag
b main
r
ju *0x8048de5
```

gives flag14's password `7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ`

5. pwn the flag

```shell
su flag14
getflag
```

gives final flag `7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ`

final pwn ! all users have been pwnd
