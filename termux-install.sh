echo "sedang menginstall paket yang diperlukan"
pkg install lolcat git php -y
pkg install openssh | ssh -y
pkg install figlet -y
pkg install curl wget ruby -y
pkg install python -y
pkg install python-pip -y
pkg install python3-pip -y
pkg install speech-dispatcher
echo "paket telah terinstall"
