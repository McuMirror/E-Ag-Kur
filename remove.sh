#!/bin/bash
FILE="$HOME/Masaüstü/E-Ag.desktop"
# init
version=$(uname -a|awk '{print $3}'|cut -c1-1)
#echo $version
ver=3
id

if [ $ver == $version ]
then
#**********************************************
echo "üç"
rm /usr/bin/E-Ag
rm $FILE
rm /usr/bin/E-Ag.desktop
rm /usr/bin/E-Ag.ico
rm /usr/bin/E-Agxdglink.sh
rm /etc/xdg/autostart/E-Agetcxdgautostart.desktop
echo "Dosya Silindi.."    
#************************************************
else
#**********************************************
rm /usr/bin/E-Ag
rm $FILE
cp /usr/bin/E-Ag.desktop
rm /usr/bin/E-Ag.png
rm /usr/bin/E-Agxdglink.sh
rm /etc/xdg/autostart/E-Agetcxdgautostart.desktop
echo "Dosya Silindi.."    
#*****************************************
fi

