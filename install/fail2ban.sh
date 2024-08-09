#!/bin/bash

apt -y install fail2ban
systemctl start fail2ban
systemctl enable fail2ban
