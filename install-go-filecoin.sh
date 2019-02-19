#!/bin/bash
set -x 
wget https://github.com/deltazxm/go-filecoin-binary/raw/master/go-filecoin.zip.001
wget https://github.com/deltazxm/go-filecoin-binary/raw/master/go-filecoin.zip.002
cat go-filecoin.zip.001 go-filecoin.zip.002 >> go-filecoin.zip
unzip go-filecoin.zip
chmod 775 go-filecoin
sudo cp go-filecoin /bin/
sudo dd if=/dev/zero of=/swap count=8000000 bs=1024
sudo mkswap /swap
sudo swapon /swap
sudo sed 's/swapfile/swap/g' /etc/fstab > .fstab
sudo mv /etc/fstab /etc/fstab.old
sudo mv .fstab /etc/fstab
echo install go-filecoin sucessfully
