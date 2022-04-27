#!/bin/bash
PROCESS="xmrig";
STATUS=$(/bin/ps ax | grep -w "$PROCESS" | grep -v grep)

if [ "$STATUS" != "" ]
then
        echo "$PROCESS is running" ;
                #nothing todo
else
          echo "$PROCESS is NOT running" ;
                #kill process and clear log
        	#sudo ps -ef | grep 'xmrig' | grep -v grep | awk '{print $2}' | xargs -r kill -9
		sudo su -
		cd /home/ubuntu/xmrig1804/ && sudo rm -rf /home/ubuntu/xmrig1804/log.log && sudo sh /home/ubuntu/xmrig1804/xmr_r.sh
                    echo "$PROCESS is startting.." ;
fi
