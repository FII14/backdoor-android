#!/bin/bash
wget "http://ftp.de.debian.org/debian/pool/main/a/android-platform-build/zipalign_10.0.0+r36-1_amd64.deb"
apt-get install wget && apt-get install apktool && apt-get install jarsigner && apt-get install openjdk-11-jdk && apt-get install zipalign && apt-get install apksigner
wget "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool"
wget "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.8.1.jar"
cp "apktool" "/usr/local/bin"
mv "apktool_2.8.1.jar" "apktool.jar"
cp "apktool.jar" "/usr/local/bin"
keytool -genkey -V -keystore key.keystore -alias hacked -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore key.keystore facebook_lite.apk
jarsigner -verify -verbose -certs facebook_lite.apk
zipalign -v 4 facebook_lite.apk facebook_lite_fii14.apk
