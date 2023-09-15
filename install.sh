#!/bin/bash

apt-get install wget && apt-get install apktool && apt-get install jarsigner && apt-get install openjdk-11-jdk && apt-get install zipalign && apt-get install apksigner
wget "https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool"
wget "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.8.1.jar"
cp "apktool" "/usr/local/bin"
mv "apktool_2.8.1.jar" "apktool.jar"
cp "apktool.jar" "/usr/local/bin"
