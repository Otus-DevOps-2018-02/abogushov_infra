#!/bin/bash
set -e

cd /opt
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

mv /tmp/reddit.service /etc/systemd/system/reddit.service
systemctl enable reddit
