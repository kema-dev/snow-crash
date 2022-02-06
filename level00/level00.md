# level00

1. Find files belonging to specific users
2. cat the file that belongs to flag00
3. decode the content using dcode.fr

```shell
ls -laR / 2>/dev/null | grep -v /proc | grep -v rofs | grep -v root | grep -v total | grep -v -e '^$' | grep -v :
```

```shell
find / -name john 2>/dev/null
```

```shell
cat /usr/sbin/john
```

gives: `cdiiddwpgswtgt`

decoding as ROT15 gives: `nottoohardhere`

```shell
su flag00
```

```shell
nottoohardhere
```

```shell
getflag
```

gives flag:

```shell
x24ti5gi3x0ol2eh4esiuxias
```
