# level09

```shell
ls -la
```

shows that the level09 executable belongs to flag09 group, privilege escalation should be possible. token is flag09:flag09

```shell
./level09 00000
```

prints `01234` which seems to show that each char is  gets it's index in the string added to itself (char[0] = char[0] + 0, char[1] = char[1] + 1, ...)

simple python script to run and get the token (reversing the encoding)

```shell
vim /tmp/exploit.py
```

Copy-paste exploit.py's content

```shell
python /tmp/exploit.py `cat token`
```

gives flag09's password:

```shell
f3iji1ju5yuevaus41q1afiuq
```

```shell
su flag09
```

```shell
getflag
```

gives flag:

```shell
s5cAJpM8ev6XHw998pRWG728z
```
