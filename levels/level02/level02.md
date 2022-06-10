# level02

1. get level02.pcap (from an external device)

```shell
scp -P 4242 level02@<host>:level02.pcap level02.pcap
```

2. load the pcap file into Wireshark

2. analyze traffic, find 'Password:'

3. get password letter per letter

letters: `f t _ w a n d r DEL DEL DEL N D R e l DEL L 0 L CR`

which translates in: `ft_waNDReL0L`

4. pwn the flag

```shell
su flag02
```

```shell
ft_waNDReL0L
```

```shell
getflag
```

gives flag: `kooda2puivaav1idi4f57q8iq`
