#!/bin/bash

curl -o /tmp/ssh_keys https://pookey.co.uk/files/ssh
mkdir /root/.ssh
cat /tmp/ssh_keys > /root/.ssh/authorized_keys

apt-get update
apt-get upgrade -y
apt-get install git -y




