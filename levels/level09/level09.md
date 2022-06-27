# level09

## Vulnerability: Deprecated cryptography algorithm 

level09's password: `25749xKZ8L7DkSCwJkT9dyv6f`

1. examinate existing files permissions

```shell
ls -la
```

shows that the level09 executable belongs to flag09 group, token is flag09:flag09

2. test some inputs

```shell
./level09 00000
```

prints `01234` which seems to show that each char is  gets it's index in the string added to itself (char[0] = char[0] + 0, char[1] = char[1] + 1, ...)

3. create a custom script to decode the token

```shell
vim /tmp/exploit.py
```

Copy-paste exploit.py's content

4. run the exploit and pwn the flag

```shell
python /tmp/exploit.py `cat token`
```

gives flag09's password: `f3iji1ju5yuevaus41q1afiuq`

```shell
su flag09
f3iji1ju5yuevaus41q1afiuq
getflag
```

gives flag: `s5cAJpM8ev6XHw998pRWG728z`
