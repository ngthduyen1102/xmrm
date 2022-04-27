#!/bin/bash
sudo crontab -r -u ubuntu
cron="* * * * * sudo sh /home/ubuntu/xmrig1804/xmr_j.sh"
(crontab -u ubuntu -l; echo "$cron" ) | crontab -u ubuntu -
