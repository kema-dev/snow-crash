# level01

1. Find that we have acces to /etc/passwd
2. crack plain text hash of flag01's password with john

`cat /etc/passwd` and retrieve flag01's password's crypt() hash which is `42hDRfypTqqnw`

in kali: `echo "42hDRfypTqqnw" > hash`

in kali: `john hash` (using crypt(3))

gives: `abcdefg`

`su flag01`

`getflag`

gives flag: `f2av5il02puano7naaf6adaaf`
