#!/bin/bash

apt-get -y update
apt-get -y install zip unzip

curl -sSLO https://github.com/ZeekInteractive/server-setup/archive/master.zip

unzip master.zip
mv server-setup-master server-setup

echo 'Users to create: name="key":'
read USERS

echo $USERS > config/users.txt