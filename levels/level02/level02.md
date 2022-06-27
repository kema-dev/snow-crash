# level02

## Vulnerability: Network sniffing, no encryption

level02's password: `f2av5il02puano7naaf6adaaf`

1. examinate existing files permissions

```shell
ls -la
```

shows a pcap file that can be used to sniff the network traffic

2. get level02.pcap (from an external device)

```shell
scp -P 4242 level02@<host>:level02.pcap .
```

2. load the pcap file into [Wireshark](https://www.wireshark.org/) and analyze traffic, find 'Password:' and get it letter by letter

letters: `f t _ w a n d r DEL DEL DEL N D R e l DEL L 0 L CR`

which translates in: `ft_waNDReL0L`,(`DEL` is a backspace, `CR` is a newline)

3. pwn the flag

```shell
su flag02
ft_waNDReL0L
getflag
```

gives flag: `kooda2puivaav1idi4f57q8iq`
