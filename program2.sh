#!/bin/bash

Blue='\e[1;34m'
cyan='\033[1;36m'
sian=$(tput setaf 6)
ungu=$(tput setaf 5)
orange='\e[38;5;166m'
echo "note: jangan jalankan tools jika sedang berada dimode root!"
touch lolcat.txt
echo "Selamat Datang Bosq, Semoga enjoy ya dengan toolsnya!" > lolcat.txt
#banner dulu biar keren
spd-say "Welcome to KiKatz!"
lolcat --spread 4.0 --seed 2 --duration 10 --animate banner.txt
 
echo ""
echo -e "${Blue}      ======================
     = Author = NITRO        =
     = Recode aja gapapa bro =
      ======================"
      #perkenalan dulu dong
lolcat --spread 3.0 --freq 0.3 --seed 1 --animate lolcat.txt 
sleep 2
echo ""
echo ""
read -p "${ungu}[1] Metasploit (sadap perangkat) [6] Banner 1 lebih buluk
[2] Mapping Jaringan
[3] Rekam Kamera
[4] Rekam Audio
[5] Lacak Lokasi

$sian Pilih dari 1-6:" pilihan;
 if [ $pilihan == 1 ]; then
tambah="01010101010101010010101010100101010"
tpanjang=${#tambah}
i=0
while ((i < 100)); do
n=$((i*tpanjang / 100))
echo -e "\n"
printf "\e[00;32m\r[%-${tpanjang}s]\e[00m" "${tambah:0:n}"
((i += RANDOM%5+2))
        sleep 0.02
    done
    echo -e "\n"
    clear
    chmod +x metasploit.sh
   ./metasploit.sh
elif [ $pilihan == 2 ]; then
echo -e "\e[1;32msedang menjalankan nmap"
clear
sleep 2
chmod +x nmap.sh
./nmap.sh
elif [ $pilihan == 3 ]; then
echo -e "\033[92msedang menjalankan Penyadap-Kamera"
clear
echo "tolong jalankan chmod +x webcam.sh && ./webcam.sh disesi terminal lain"
chmod +x ngrok.sh && ./ngrok.sh
elif [ $pilihan == 4 ]; then
clear
read -p "1. sayhello (linuxchoice)
2. beef: " suara; echo "\n"
echo "\n"
if [ $suara = 1 ]; then
        tambah="sedang menginstall sayhello"
tpanjang=${#tambah}
i=0
while ((i < 100)); do
n=$((i*tpanjang / 100))
printf "\e[00;32m\r[%-${tpanjang}s]\e[00m" "${tambah:0:n}"
((i += RANDOM%5+2))
        sleep 0.02
    done
         git clone https://github.com/thelinuxchoice/sayhello.git
         cd sayhello
         chmod +x sayhello.sh
         ./sayhello.sh
         elif [ $suara = 2 ]; then
         clear
         tambah="sedang menginstall beef"
tpanjang=${#tambah}
i=0
while ((i < 100)); do
n=$((i*tpanjang / 100))
printf "\e[00;32m\r[%-${tpanjang}s]\e[00m" "${tambah:0:n}"
((i += RANDOM%5+2))
        sleep 0.02
    done
    clear
         git clone https://github.com/beefproject/beef
         cd beef && chmod +x install && ./install && chmod +x update-geoipdb && ./update-geoipdb 
./sayhello.sh
else
echo "silahkan masukkan input yang benar!"
fi
elif [ $pilihan == 5 ]; then 
read -p "Pilih gan 
         1. Seeker(thewhiteh4t)
         2. Locator(Linuxchoice)
         3. beef(beefproject)
         4. GeoIPLocation(maldevel): " lokasi;
         clear
         if [ $lokasi = 1 ]; then
         clear
         git clone https://github.com/thewhiteh4t/seeker
         cd seeker 
         chmod +x *.py
         chmod +x *.sh
         read -p "pilih y jika kamu menggunakan termux!" termux;
if [ $termux = y ]; then
./termux_install.sh
python3 seeker.py -t manual
echo "tolong buka sesi lain dan jalankan ngrok dan copas link http-nya"
else
./install.sh
python3 seeker.py -t manual
echo "tolong buka sesi lain dan jalankan ngrok dan copas link http-nya"
fi
elif [ $lokasi = 2 ]; then
echo "sedang mendownload locator"
git clone https://github.com/thelinuxchoice/locator.git
cd locator
chmod +x *.sh && ./locator.sh
elif [ $lokasi = 3 ]; then
echo "sedang mendownload beef"
git clone https://github.com/beefproject/beef
cd beef
chmod +x *
./install && ./update-geoipdb
./beef
elif [ $lokasi = 4 ]; then
echo "sedang mendownload GeoIPLocation"
git clone https://github.com/maldevel/IPGeoLocation
cd IPGeoLocation
chmod +x *.py
pip3 install -r requirements.txt --user
read -p "masukkan ip target: " ipgeo;
./ipgeolocation.py -t $ipgeo
else 
echo "masukkan input yang benar!"
./program2.sh
 fi
./program.sh
else 
read -p "yakin mau keluar? ketik $orange n untuk mengulang:" keluar;
while [ $keluar = n ]; do
./program2.sh
done
fi
