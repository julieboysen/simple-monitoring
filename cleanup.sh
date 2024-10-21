#!/bin/bash

echo "Uninstalls Netdata..."
wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh && sh /tmp/netdata-kickstart.sh --uninstall

echo "Netdata uninstalled."