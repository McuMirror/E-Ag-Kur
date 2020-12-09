#!/bin/bash
FILE="$HOME/Masaüstü/E-Ag.desktop"
# init
# look for empty dir 

if [ -f $FILE ]; then
     exit
else
cp /usr/bin/E-Ag.desktop $FILE
echo "Dosya Kopyalandı.."    
fi
exit

