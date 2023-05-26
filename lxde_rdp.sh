rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ngrok.sh https://github.com/violatv/rdp/raw/main/new_rdp/ngrok.sh > /dev/null 2>&1
chmod +x ngrok.sh
./ngrok.sh
echo "================================"
echo "Wait Downloading file 3-4 minutes"
echo "More free vps visit 👉akuh.net👈"
echo "================================"
sudo apt-get install lxde -y
echo "===========40%"
sudo apt install xrdp -y
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh
echo "===============60%"
echo "==============="
echo "Install Brave"
echo "==============="
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
echo "===================80%"
sudo service xrdp start
echo "=======================100%"
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Don't close tab colab to keep rdp running 12 hours"
echo "👉Keep support akuh.net thank you👈"
echo "===================================="
sleep 9876543210
