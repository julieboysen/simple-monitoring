#!/bin/bash

echo "Installing Netdata..."
wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh && sh /tmp/netdata-kickstart.sh

echo "Verifying script integrity..."
[ "2d9d5910c018f9c3b5d12f77cdc95c75" = "$(curl -Ss https://get.netdata.cloud/kickstart.sh | md5sum | cut -d ' ' -f 1)" ] && echo "OK, VALID" || echo "FAILED, INVALID"

echo "Starting the Netdata Agent..."
sudo systemctl start netdata

echo "Netdata installation complete."