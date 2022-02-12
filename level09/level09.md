# level09

```shell
ls -la
```

shows that the level09 executable belongs to flag09 group, privilege escalation should be possible. token is flag09:flag09

```shell
./level09 00000
```

prints `01234` which seems to show that each char is  gets it's index in the string added to itself (char[0] = char[0] + 0, char[1] = char[1] + 1, ...)

simple python script to run and get the token

```shell
python exploit.py `cat token`
```
