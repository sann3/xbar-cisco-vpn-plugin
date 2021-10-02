#!/usr/bin/env bash
/opt/cisco/anyconnect/bin/vpn connect VPN_URL -s << EOM
0
VPN_USERNAME
$(security find-generic-password -w -s 'SECRET_NAME' -a 'ACCOUNT_NAME')
y
EOM

kill -9 $(ps -p $(ps -p $PPID -o ppid=) -o ppid=)
