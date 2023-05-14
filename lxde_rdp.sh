rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://raw.githubusercontent.com/violatv/rdp/main/GCngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
./ngrok tcp --region us 3389 &>/dev/null &
clear
echo "================================"
echo "Wait Downloading file 3-4 minutes"
echo "More free vps visit 👉akuh.net👈"
echo "================================"
apt-get install lxde -y
clear
echo "===================================="
echo "Install Firefox"
echo "===================================="
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main"
echo "===================================="
echo "Update"
echo "===================================="
apt-get update > /dev/null 2>&1
echo "===================================="
echo "Installing"
echo "===================================="
apt-get install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Install xrdp"
echo "===================================="
apt install -y xrdp > /dev/null 2>&1
service xrdp start > /dev/null 2>&1
clear
echo "=======================100%"
echo "===================================="
echo "Username : root"
echo "Username : that you made yourself"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "👉Keep support akuh.net thank you👈"
echo "===================================="
sleep 9876543210
