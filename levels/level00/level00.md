# level00

## Vulnerability: Old and simple cryptography, similar to [Caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher)

level00's password: `level00`

1. find files belonging to specific users, giving global intel

```shell
ls -laR / 2>/dev/null | grep -v /proc | grep -v rofs | grep -v root | grep -v total | grep -v -e '^$' | grep -v :
```

2. cat the file that belongs to flag00

```shell
find / -name john 2>/dev/null
cat /usr/sbin/john
```

gives: `cdiiddwpgswtgt`

3. decode the content using [dcode.fr](https://www.dcode.fr)

decoding as ROT15 gives: `nottoohardhere`

4. pwn the flag

```shell
su flag00
nottoohardhere
getflag
```

gives flag: `x24ti5gi3x0ol2eh4esiuxias`
