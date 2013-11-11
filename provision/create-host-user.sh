#-*- coding: utf-8 -*-
#!/bin/bash

HOST_USER=$1
HOST_PASSWORD=$2

# Create Host user on Guest
useradd $HOST_USER -m

# Set password
echo -e "$HOST_PASSWORD\n$HOST_PASSWORD" | passwd $HOST_USER

# Add to sudoers list
sudo usermod -a -G sudo $HOST_USER

# Set default shell to bash
chsh -s `which	bash` $HOST_USER
