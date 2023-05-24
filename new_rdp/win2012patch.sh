#! /bin/bash
# Make Instance Ready for Remote Desktop or RDP
apt-get update
rm -rf win2012 win2012.vhd win2012.gz ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "Windows server datacenter 2012"
wget -O win2012.gz https://soft.shaobing.ru/Windows/natee/win/lite/winsrv2012r2-data-x64-us/winsrv2012r2-data-x64-us.vhd.gz
gunzip win2012.gz
echo "Wait..."
echo "I m Working Now.."
mv win2012 win2012.vhd
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
clear
echo Downloading File and Fetching Package
apt-get install qemu-system-x86 -y
echo "Wait"
echo "Starting Windows"
qemu-system-x86_64 -hda w2022.img -m 58G -smp sockets=1,cores=12,threads=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: Administrator"
echo "Password: 3Mapleonix123"
echo "===================================="
echo "===================================="
echo "Keep supporting Mapleon, thank you"
echo "Windows Server 2012 R2 58 GiB Ram & 12 vCpu "
echo "Wait 2 minute to finish VM Fully boot up"
echo "DO NOT close this tab & Set your Autoclick & VMos"
echo "RDP runs depend your subscription"
echo "===================================="
sleep 43120
