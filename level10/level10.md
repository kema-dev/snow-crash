# level10

```shell
ls -la
```

shows that the level10 executable belongs to flag10 group, privilege escalation should be possible. token is flag10:flag10

performing a simple retdec decompilation, it seems like the executable reads specified file then sends it to specified host on port 6969
