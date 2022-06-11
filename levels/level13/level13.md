# level 13

1. examinate existing files permissions

```shell
ls -la
```

shows an executable which is flag13:level13

2. get the executable (from an external device)

```shell
scp -P 4242 level13@<host>:level03 level13
```

1. Decompile binary

```shell
/opt/retdec/bin/retdec-decompiler.py level03
```
