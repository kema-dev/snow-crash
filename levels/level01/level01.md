# level01

## Vulnerability: Deprecated cryptography algorithm and exposed hash

level01's password: `x24ti5gi3x0ol2eh4esiuxias`

1. examine /etc/passwd

```shell
cat /etc/passwd
```

shows flag01's password's hash 

2. retrieve flag01's password's hash

```shell
cat /etc/passwd | grep flag01 | cut -d ':' -f 2
```

gives `42hDRfypTqqnw`

3. crack hash of flag01's password with john (from an external device)

```shell
echo "42hDRfypTqqnw" > hash
john hash
```

(using crypt(3)) gives: `abcdefg`

4. pwn the flag

```shell
su flag01
abcdefg
getflag
```

gives flag: `f2av5il02puano7naaf6adaaf`
