#!/bin/bash
FILE="$HOME/Masaüstü/E-Ag.desktop"
# init
version=$(uname -a|awk '{print $3}'|cut -c1-1)
#echo $version
ver=3

if [ $ver == $version ]
then
#**********************************************
echo "üç"
sudo apt-get install -f -y
sudo apt-get update
sudo dpkg -r ag
sudo dpkg -r myx11vnc
echo "Kurulum Başlatıldı."
sudo apt-get install vsftpd -y
echo "x11vnc Kurulumu Başlatıldı."
sudo apt-get install x11vnc -y
echo "vncviewer Kurulumu Başlatıldı."
sudo apt-get install xtightvncviewer
echo "ssh Kurulumu Başlatıldı."
sudo apt-get install openssh-server -y
echo "sshpass Kurulumu Başlatıldı."
sudo apt-get install sshpass
echo "arp Kurulumu Başlatıldı."
sudo apt-get install net-tools --reinstall
echo "arp Kopyalama Başlatıldı."
sudo cp /usr/sbin/arp /usr/bin/
echo "nmap Kurulumu Başlatıldı."
sudo apt-get install nmap -y
echo "xrdp Kurulumu Başlatıldı."
sudo apt-get install xrdp -y
echo "rdesktop Kurulumu Başlatıldı."
sudo apt-get install rdesktop -y
#echo "dolphin Kurulumu Başlatıldı."
#sudo apt-get install dolphin -y
#opengl düzeltmesi
#sudo apt-get install libgl1-mesa-dri -y
echo "x11remote Kurulumu Başlatıldı."
sudo dpkg --force-all -i myx11vnc.deb
echo "Kurulum Tamamlandı.."
#sudo dpkg --force-all -i E-Ag.deb
sudo /usr/bin/E-Agxdglink.sh
echo "Kurulum Tamamlandı.."
sudo dpkg --force-all -i E-Ag.deb
sudo mkdir /usr/share/E-Ag
sudo chmod 777 /usr/share/E-Ag

#***********************************************
cp ./E-Ag /usr/bin/E-Ag
cp ./E-Ag.desktop $FILE
cp ./E-Ag.desktop /usr/bin/E-Ag.desktop
cp ./E-Ag.ico /usr/bin/E-Ag.ico
cp ./E-Agxdglink.sh /usr/bin/E-Agxdglink.sh
cp ./E-Agetcxdgautostart.desktop /etc/xdg/autostart/E-Agetcxdgautostart.desktop
echo "Dosya Kopyalandı.."    
#************************************************
else
#**********************************************
sudo apt-get install -f -y
sudo apt-get update
sudo dpkg -r ag
sudo dpkg -r myx11vnc
echo "Kurulum Başlatıldı."
sudo apt-get install vsftpd -y
echo "x11vnc Kurulumu Başlatıldı."
sudo apt-get install x11vnc -y
echo "vncviewer Kurulumu Başlatıldı."
sudo apt-get install xtightvncviewer
echo "ssh Kurulumu Başlatıldı."
sudo apt-get install openssh-server -y
echo "sshpass Kurulumu Başlatıldı."
sudo apt-get install sshpass
echo "arp Kurulumu Başlatıldı."
sudo apt-get install net-tools --reinstall
echo "arp Kopyalama Başlatıldı."
sudo cp /usr/sbin/arp /usr/bin/
echo "nmap Kurulumu Başlatıldı."
sudo apt-get install nmap -y
echo "nmap Kurulumu Başlatıldı."
sudo apt-get install xrdp -y
echo "rdesktop Kurulumu Başlatıldı."
sudo apt-get install rdesktop -y
echo "dolphin Kurulumu Başlatıldı."
sudo apt-get install dolphin -y
#opengl düzeltmesi
#sudo apt-get install libgl1-mesa-dri -y
echo "x11remote Kurulumu Başlatıldı."
sudo dpkg --force-all -i myx11vnc.deb
echo "Kurulum Tamamlandı.."
sudo dpkg --force-all -i E-Ag.deb
sudo mkdir /usr/share/E-Ag
sudo chmod 777 /usr/share/E-Ag

#**********************************************
cp ./E-Ag /usr/bin/E-Ag
cp ./E-Ag.desktop $FILE
cp ./E-Ag19.desktop /usr/bin/E-Ag.desktop
cp ./E-Ag.png /usr/bin/E-Ag.png
cp ./E-Agxdglink.sh /usr/bin/E-Agxdglink.sh
cp ./E-Agetcxdgautostart19.desktop /etc/xdg/autostart/E-Agetcxdgautostart.desktop
echo "Dosya Kopyalandı.."    
#*****************************************
fi

