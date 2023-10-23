#!/bin/bash 
sed -i 's|^#Banner .*|Banner /etc/ssh/banner.txt|' /etc/ssh/sshd_config
service ssh restart 
