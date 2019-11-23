read -p "         ============================
         1. Install nmap          
         =============================
         2. Menjalankan nmap    
         =============================
         3. Mengetahui ip semua client
         =============================
         4. Mengetahui ip sebuah web
         =============================:
         " metasploit;
         if [ $metasploit = 1 ]; then
         echo "sedang menginstall nmap, jika perlu akses root mohon jalankan dengan sudo"
         apt install nmap
         pkg install nmap
  elif [ $metasploit = 2 ]; then
  echo "pastikan nmap sudah terinstall!"
  nmap -h
  elif [ $metasploit = 3 ]; then
  route -n
  echo "\n"
  read  -p "masukkan gateway jaringanmu, default(192.168.43.1) tolong tulis dengan akhiran .0 seperti 192.168.43.0" choice;
  echo "\n"
  if [ $choice ]; then
  nmap -sP $choice/24
  else
  nmap -sP 192.168.43.0/24
  fi
elif [ $metasploit = 4 ]; then
read -p "tolong masukkan domain web yang ingin discan ip nya" decision;
if [ $decision ]; then
echo "\n"
nmap $decision
else
echo "masukkan domain web yang ingin discan!"
clear
./nmap.sh
fi
fi