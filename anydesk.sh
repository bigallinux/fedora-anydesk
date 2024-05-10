#!/bin/bash


#anydesk dependencia.

echo '****** anydesk dependencia. ******'

sudo dnf -y --releasever=32 install pangox-compat.x86_64

# instalação de repositorio

echo '***** instalação de repositorio ******'

sudo cat > /etc/yum.repos.d/AnyDesk-Fedora.repo << "EOF" 
[anydesk]
name=AnyDesk Fedora - stable
baseurl=http://rpm.anydesk.com/fedora/$basearch/
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://keys.anydesk.com/repos/RPM-GPG-KEY
EOF

# instalação do anydesk

echo '****** Atualização ******'

sudo dnf update -y

echo '****** instalação do anydesk *******'

# sudo dnf install anydesk  -y

sudo dnf install -y anydesk_6.1.1-1_x86_64.rpm
