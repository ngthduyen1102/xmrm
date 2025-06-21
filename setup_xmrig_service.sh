#!/bin/bash

# Đường dẫn tới xmrig
WORKDIR="/home/user/xmrig/build"

# Tạo file service
sudo bash -c "cat > /etc/systemd/system/xmrig.service <<EOF
[Unit]
Description=XMRig Miner
After=network.target

[Service]
WorkingDirectory=${WORKDIR}
ExecStart=${WORKDIR}/xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u TRX:TTEKqcnXBVWngtAa9adjaKqLRK1gLk58t3.onnhe -p x
Restart=always
Nice=10

[Install]
WantedBy=multi-user.target
EOF"

# Kích hoạt service
sudo systemctl daemon-reload
sudo systemctl enable xmrig
sudo systemctl start xmrig

# In trạng thái kiểm tra
sudo systemctl status xmrig
