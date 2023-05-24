#! /bin/bash
# Make Instance Ready for Remote Desktop or RDP
apt-get update
rm -rf win2012 win2012.vhd win2012.gz ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "Windows server datacenter 2012"
wget -O win2012.gz https://cn-beijing-data.aliyundrive.net/9sZvvjXA%2F68977%2F617cc21648b460c6f022471fbabdb98c47a0a47c%2F617cc216cb5135148c8f466099d2322554a8cb2d?di=bj29&dr=20523&f=62028512e79ea24eaff046e0b088bd08b3940ccb&response-content-disposition=attachment%3B%20filename%2A%3DUTF-8%27%27winsrv2012r2-data-x64-us.vhd.gz&security-token=CAIS%2BgF1q6Ft5B2yfSjIr5fSBtv6lY5Q4vefRnL7g1keavt%2B2aqcijz2IHFPeHJrBeAYt%2FoxmW1X5vwSlq5rR4QAXlDfNWGBAWa6qFHPWZHInuDox55m4cTXNAr%2BIhr%2F29CoEIedZdjBe%2FCrRknZnytou9XTfimjWFrXWv%2Fgy%2BQQDLItUxK%2FcCBNCfpPOwJms7V6D3bKMuu3OROY6Qi5TmgQ41Uh1jgjtPzkkpfFtkGF1GeXkLFF%2B97DRbG%2FdNRpMZtFVNO44fd7bKKp0lQLukMWr%2Fwq3PIdp2ma447NWQlLnzyCMvvJ9OVDFyN0aKEnH7J%2Bq%2FzxhTPrMnpkSlacGoABjE%2B7PsYbKZCqD3eyZDfn6vds%2F8pWjsQ%2FkefGLtny19NORh4ISUqc8KNQJwLKvs%2F6VSlubVOCVl5CYSheCnR0dHnXMP8684L4Euc7gvEOInQBDVTE0hO%2FgwYjXhJLf7YwgrI%2FWtStVs7xHoXAjbdA%2F47Nh75brbiafwuFIZR0nms%3D&u=f2c69b9eb0eb4604be6a87a304ac94fd&x-oss-access-key-id=STS.NTgMaNxQqU5tDTJgYKftR6o7h&x-oss-expires=1684910361&x-oss-signature=eBALVFAdwTLQjFe%2FQPzEa6wBA%2BOqEAoRrAIv%2BRZcPp0%3D&x-oss-signature-version=OSS2
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
