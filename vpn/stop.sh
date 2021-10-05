#!/usr/bin/env bash

/opt/cisco/anyconnect/bin/vpn disconnect

osascript -e 'quit app "Cisco AnyConnect Secure Mobility Client"'

kill -9 $(ps -p $(ps -p $PPID -o ppid=) -o ppid=)