# level00

1. find files belonging to specific users

```shell
ls -laR / 2>/dev/null | grep -v /proc | grep -v rofs | grep -v root | grep -v total | grep -v -e '^$' | grep -v :
```

2. cat the file that belongs to flag00

```shell
find / -name john 2>/dev/null
```

```shell
cat /usr/sbin/john
```

gives: `cdiiddwpgswtgt`

3. decode the content using [dcode.fr](https://www.dcode.fr)

decoding as ROT15 gives: `nottoohardhere`

4. pwn the flag

```shell
su flag00
```

```shell
nottoohardhere
```

```shell
getflag
```

gives flag: `x24ti5gi3x0ol2eh4esiuxias`
