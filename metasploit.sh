read -p "         ============================
         1. Install Metasploit          
         =============================
         2. Menjalankan Metasploit    
         =============================
         3. Mengetahui ip kamu
         =============================
         4. Membuat backdoor
         =============================" metasploit;
         if [ $metasploit = 1 ]; then
         echo "tolong jalankan script dalam mode root!"
         curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
  elif [ $metasploit = 2 ]; then
  echo "pastikan metasploit sudah terinstall!"
  msfconsole
  elif [ $metasploit = 3 ]; then
  echo "pastikan paket curl dan net-tools sudah terinstall!, untuk menginstall silakan jalankan ./install.sh"
  curl ifconfig.me
  echo -e "\n"
  echo "ip diatas adalah ip publikmu! jika error berarti kamu belum tersambung keinternet"
  ifconfig
  echo -e "\n"
  echo "ip diatas adalah ip lokal, cari ip pada wifi interface yang dipakai untuk mengakses internet"
elif [ $metasploit = 4 ]; then
echo "pastikan paket git terinstall!"
git clone https://github.com/r00t-3xp10it/venom
cd venom
sudo chmod -R +x *.sh
sudo chmod -R +x *.py
cd aux
sudo ./setup.sh
sudo ./venom.sh
else
clear
echo "masukkan pilihan yang benar!"
./metasploit.sh
fi