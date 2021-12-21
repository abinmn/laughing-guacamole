#!/bin/bash

sudo mv /tmp/app.service /etc/systemd/system/app.service

# Enable app service
sudo systemctl daemon-reload
sudo systemctl enable app.service

# Deprovision packer user
/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync