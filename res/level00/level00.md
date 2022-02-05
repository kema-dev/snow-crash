# level00

1. Find files belonging to specific users
2. cat the file that belongs to flag00
3. decode the content using dcode.fr

`ls -laR / 2>/dev/null | grep -v /proc | grep -v rofs | grep -v root | grep -v total | grep -v -e '^$' | grep -v :`

`find / -name john 2>/dev/null`

`cat /usr/sbin/john`

gives: `cdiiddwpgswtgt`

decoding as ROT15 gives: `nottoohardhere`

`su flag00`

`nottoohardhere`

`getflag`

gives flag: `x24ti5gi3x0ol2eh4esiuxias`
