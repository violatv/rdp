#! /bin/bash
# Make Instance Ready for Remote Desktop or RDP
apt-get update
rm -rf w2016 w2016.img w2016.gz ngrok ngrok.zip ng.sh > /dev/null 2>&1
mv w2016 w2016.img
echo "Wait..."
echo "I m Working Now.."
echo "Download ngrok"
echo "===================================="
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip &>/dev/null &
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP
./ngrok tcp --region us 3388 &>/dev/null &
clear
echo Downloading files from aank.me
apt-get install qemu-system-x86 -y
echo "Wait..."
echo "Starting Windows"
qemu-system-x86_64 -hda w2016.img -m 4G -smp sockets=8,cores=4,threads=2 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: Administrator"
echo "Password: Lingg@H0sting"
echo "===================================="
echo "===================================="
echo "Don't closse this Tab"
echo "Wait 1 - 3 minut for finishing bot"
echo "RDP run up to 50 hours"
echo "Support YT Channel-> Aank is ME, thankyou"
echo "Link-> https://aank.me/Youtube"
echo "===================================="
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
 
██╗     ██╗███╗   ██╗ ██████╗  ██████╗  █████╗ ██╗  ██╗ ██████╗ ███████╗████████╗██╗███╗   ██╗ ██████╗ 
██║     ██║████╗  ██║██╔════╝ ██╔════╝ ██╔══██╗██║  ██║██╔═══██╗██╔════╝╚══██╔══╝██║████╗  ██║██╔════╝ 
██║     ██║██╔██╗ ██║██║  ███╗██║  ███╗███████║███████║██║   ██║███████╗   ██║   ██║██╔██╗ ██║██║  ███╗
██║     ██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██╔══██║██║   ██║╚════██║   ██║   ██║██║╚██╗██║██║   ██║
███████╗██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║██║  ██║╚██████╔╝███████║   ██║   ██║██║ ╚████║╚██████╔╝
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝
    $r  Support YT Channel-> Aank is ME © 2022 $c https://aank.me/Youtube 
          
$endc$enda""";
sleep 43200
