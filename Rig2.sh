sudo apt update && sudo apt upgrade -y
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build && cd build
cmake ..
make -j$(nproc)
sudo cp xmrig /bin/xmrig
./xmrig -o us-west01.miningrigrentals.com:3333:3333 -u coulterstutz.332070 -p x -k --nicehash --coin monero -a rx/0
