# level 13

1. examinate existing files permissions

```shell
ls -la
```

shows an empty directory, maybe we should work on geflag function

2. locate the binary

```shell
which getflag
```

return `/bin/getflag`

3. get the executable (from an external device)

```shell
scp -P 4242 level14@<host>:/bin/getflag .
```

4. Decompile binary and examine the resulting code

```shell
retdecomp getflag
```

shows as list of flags

5. just use gdb and jump to uid 3014's flag printing (3000+ uids are user created accounts, 3014 is the last one and looks like 3000 + 14)

```shell
gdb getflag
b main
r
ju *0x8048de5
```

gives flag14's password `7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ`

6. pwn the flag

```shell
su flag14
getflag
```

gives final flag `7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ`

final pwn ! all users have been pwnd
