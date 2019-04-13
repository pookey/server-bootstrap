#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install puppet librarian-puppet -y
cd /tmp
git clone https://github.com/pookey/server-bootstrap.git
cd /tmp/server-bootstrap/puppet/
librarian-puppet install
puppet apply ./manifests/site.pp  --modulepath /tmp/server-bootstrap/puppet/modules/


