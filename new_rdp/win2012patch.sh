apt-get update
rm -rf w2022 w2022.img w2022.gz ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "Download windows files"
wget -O w2022.gz https://archive.org/download/windows2022/windows2022.gz
gunzip w2022.gz
echo "Wait..."
echo "I m Working Now.."
mv w2022 w2022.img
wget -O ng.sh https://raw.githubusercontent.com/violatv/rdp/main/GCngrok.sh > /dev/null 2>&1
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
