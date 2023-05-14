rm -rf ngrok  ngrok-stable-linux-amd64.zip > /dev/null 2>&1
echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
./ngrok authtoken 2FHQ9SC0PteACNxKnJLZlGSLo4o_83fgAadbdrp8sWhLrVWzv
nohup ./ngrok tcp 3389 &>/dev/null &
echo Downloading File From akuh.net
apt update && apt upgrade -y
apt install firefox -y
apt-get install -y xrdp
apt-get install mate-core mate-desktop-environment mate-notification-daemon -y
sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
service xrdp start
clear
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "More  Free VPS akuh.net"
echo "===================================="
