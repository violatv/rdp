echo "======================="
rm -rf ngrok ngrok.zip ngrok.sh > /dev/null 2>&1
echo "Download ngrok"
echo "======================="
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
./ngrok authtoken 2FHQ9SC0PteACNxKnJLZlGSLo4o_83fgAadbdrp8sWhLrVWzv 
clear
./ngrok tcp --region us 3389 &>/dev/null &
echo "======================="
