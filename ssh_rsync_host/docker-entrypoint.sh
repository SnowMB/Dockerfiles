#!/bin/sh

#on first run generate host keys
if [ ! -f "/etc/ssh/ssh_host_rsa_key" ]; then
        # generate fresh rsa key
        ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
fi

if [ ! -f "/etc/ssh/ssh_host_dsa_key" ]; then
        # generate fresh dsa key
        ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
fi

if [ ! -f "/etc/ssh/ssh_host_ecdsa_key" ]; then
        # generate fresh dsa key
        ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ''
fi

if [ ! -f "/etc/ssh/ssh_host_ed25519_key" ]; then
        # generate fresh dsa key
        ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ''
fi


#set authorized keys
cat /keys/* > /root/.ssh/authorized_keys

exec "$@"
