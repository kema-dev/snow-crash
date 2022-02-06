# level02

1. scp level02.pcap on a computer with wireshark
2. Analyze traffic, find 'Password:'
3. Get password letter per letter

letters: `f t _ w a n d r DEL DEL DEL N D R e l DEL L 0 L CR`

which translates in: `ft_waNDReL0L`

```shell
su flag02
```

```shell
ft_waNDReL0L
```

```shell
getflag
```

gives flag:

```shell
kooda2puivaav1idi4f57q8iq
```
