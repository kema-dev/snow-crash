# level06

```shell
ls -la
```

shows that the level06 executable belongs to flag06 group, privilege escalation should be possible

```shell
scp -P 4242 level06@127.0.0.1:/home/user/level06/level06 .
```

```shell
/opt/retdec/bin/retdec-decompiler.py level06
```

setresgid confirms that privilege escalation is possible

```shell
vim /tmp/exploit.php
```

Copy-paste exploit.php's content

```shell
./level06 /tmp/exploit.php
```

prints the content of the file

```shell
cat level06.php
```

shows deprecated `\e` regex modifier, which indicates we can inject code in the string `https://stackoverflow.com/questions/16986331/can-someone-explain-the-e-regex-modifier`
