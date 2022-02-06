# level01

1. Find that we have acces to /etc/passwd
2. crack plain text hash of flag01's password with john

```shell
cat /etc/passwd
```

Retrieve flag01's password's crypt() hash which is `42hDRfypTqqnw`

in kali:

```shell
echo "42hDRfypTqqnw" \> hash
```

in kali:

```shell
john hash
```

(using crypt(3)) gives: `abcdefg`

```shell
su flag01
```

```shell
getflag
```

gives flag:

```shell
f2av5il02puano7naaf6adaaf
```
