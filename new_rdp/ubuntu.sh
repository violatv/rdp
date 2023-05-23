rm -rf ngrok  ngrok.zip  ngrok.sh > /dev/null 2>&1
wget -O ngrok.sh https://github.com/violatv/rdp/raw/main/new_rdp/ngrok.sh > /dev/null 2>&1
chmod +x ngrok.sh
./ngrok.sh
clear
echo "===================================="
echo "Install RDP"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : ubuntu"
echo "Password : ubuntu"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep support akuh.net thank you"
echo "Wait 1 minute to finish bot"
echo "===================================="
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:20.04 > /dev/null 2>&1
