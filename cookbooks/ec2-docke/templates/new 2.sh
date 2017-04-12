#!/bin/bash
sed -i 's/^#PermitRootLogin yes.*/PermitRootLogin no/g' /etc/ssh/sshd_config


cat /etc/ssh/sshd_config
echo "unigo inc "