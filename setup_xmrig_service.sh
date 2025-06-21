#!/bin/bash

# Đường dẫn tuyệt đối tới thư mục build
WORKDIR="/home/user/xmrig/build"

# Tạo file service
sudo bash -c "cat > /etc/systemd/system/xmrig.service <<EOF
[Unit]
Description=XMRig Miner
After=network-online.target
Wants=network-online.target

[Service]
WorkingDirectory=${WORKDIR}
ExecStartPre=/bin/sleep 20
ExecStart=${WORKDIR}/xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u TRX:TTEKqcnXBVWngtAa9adjaKqLRK1gLk58t3.thu -p x
Restart=always
Nice=10
StandardOutput=append:${WORKDIR}/xmrig.log
StandardError=append:${WORKDIR}/xmrig.err

[Install]
WantedBy=multi-user.target
EOF"

# Reload systemd
sudo systemctl daemon-reload

# Enable service
sudo systemctl enable xmrig

# Start service
sudo systemctl start xmrig

# Kiểm tra trạng thái
sudo systemctl status xmrig
