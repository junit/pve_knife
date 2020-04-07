#!/bin/bash
ReplaceEnterpriseSource() {
    if [ -f "/etc/apt/sources.list.d/pve-enterprise.list"  ]; then
    mv /etc/apt/sources.list.d/pve-enterprise.list /etc/apt/sources.list.d/pve-enterprise.list.bak
    echo -e 'deb https://mirrors.ustc.edu.cn/proxmox/debian/pve buster pve-no-subscription\n' > /etc/apt/sources.list.d/pve-community.list
    fi
    echo "Source replacement already complete"
}

ReplaceDebianUpdateRepo() {
    cat > /etc/apt/sources.list <<EOF
deb https://mirrors.ustc.edu.cn/debian/ buster main contrib non-free
deb https://mirrors.ustc.edu.cn/debian/ buster-updates main contrib non-free
deb https://mirrors.ustc.edu.cn/debian/ buster-backports main contrib non-free
deb https://mirrors.ustc.edu.cn/debian-security/ buster/updates main contrib non-free
deb-src https://mirrors.ustc.edu.cn/debian/ buster main contrib non-free
deb-src https://mirrors.ustc.edu.cn/debian/ buster-updates main contrib non-free
deb-src https://mirrors.ustc.edu.cn/debian/ buster-backports main contrib non-free
deb-src https://mirrors.ustc.edu.cn/debian-security/ buster/updates main contrib non-free
EOF
}

AddReserveProxy() {
# Add For Proxmox Update
#if [ `grep -c "89.31.125.19 download.proxmox.com" /etc/hosts` != '0' ]; then
#	echo 'Done'
#else
#    echo "89.31.125.19 download.proxmox.com" >> /etc/hosts
#fi
}

