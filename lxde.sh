wget -O ng.sh https://raw.githubusercontent.com/violatv/rdp/main/GCngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
echo "================================"
echo "Wait Downloading file 3-4 minutes"
echo "More free vps visit 👉akuh.net👈"
echo "================================"
apt-get install lxde > /dev/null 2>&1
echo "===========40%"
apt install -y xrdp > /dev/null 2>&1
echo "===============60%"
echo "==============="
echo "Install Brave"
echo "==============="
apt install apt-transport-https curl > /dev/null 2>&1
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null 2>&1
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null 2>&1
apt update > /dev/null 2>&1
apt install brave-browser > /dev/null 2>&1
echo "===================80%"
service xrdp start > /dev/null 2>&1
echo "=======================100%"
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Don't close tab colab to keep rdp running 12 hours"
echo "👉Keep support akuh.net thank you👈"
echo "===================================="
sleep 9876543210
