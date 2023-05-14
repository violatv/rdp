echo "Download ngrok"
wget https://raw.githubusercontent.com/violatv/rdp/main/ngrok.sh && chmod +x ngrok.sh && ./ngrok.sh
echo Downloading File From akuh.net
echo "===================================="
echo "Wait 2 Minutes"
echo "This is only for education"
echo "Other interesting tutorials visit akuh.net"
echo "===================================="
apt-get update > /dev/null 2>&1
echo "===================================="
echo "Install Firefox"
echo "===================================="
apt-get install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Install RDP"
echo "===================================="
apt-get install -y xrdp > /dev/null 2>&1
apt-get install xfce4 -y > /dev/null 2>&1
apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "===================================="
echo "Start RDP"
echo "===================================="
service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "More  Free VPS akuh.net"
echo "Don't close this tab RDP runs 12 hours"
echo "Keep support akuh.net thank you"
echo "===================================="
sleep 43210
