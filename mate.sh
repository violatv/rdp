rm -rf ngrok  ngrok-stable-linux-amd64.zip > /dev/null 2>&1
echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
./ngrok authtoken 2FHQ9SC0PteACNxKnJLZlGSLo4o_83fgAadbdrp8sWhLrVWzv
nohup ./ngrok tcp 3389 &>/dev/null &
echo Downloading File From akuh.net
sudo apt-get update > /dev/null 2>&1
echo "===================================="
echo "Install Firefox"
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
echo "Install RDP"
echo "===================================="
sudo apt-get install -y xrdp 2>&1
sudo apt-get install mate-core mate-desktop-environment -y 2>&1
echo "Start RDP"
echo "===================================="
sudo sed -i.bak '/fi/a mate-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
clear
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "More  Free VPS akuh.net"
echo "Don't close this tab RDP runs 12 hours"
echo "===================================="
sleep 43210
