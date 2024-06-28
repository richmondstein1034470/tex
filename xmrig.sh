cd ~
pkill xmrig
apt update -y
apt upgrade -y
apt install screen -y
rm -rf xmrig
mkdir xmrig
cd xmrig
wget http://download.bithunter.store:9999/xmrig/ubuntu/xmrig
chmod u+x *
read -p "input mining algo: " alog
read -p "input pool address: " pool
read -p "input wallet address: " wallet
read -p "input mining threads: " threads
./xmrig -a  "$alog"  -o "$pool" -u "$wallet" -t "$threads"