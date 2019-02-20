#!/bin/bash
wget -qO- https://dl.packager.io/srv/pghero/pghero/key | sudo apt-key add -
sudo wget -O /etc/apt/sources.list.d/pghero.list \
  https://dl.packager.io/srv/pghero/pghero/master/installer/ubuntu/16.04.repo
sudo apt-get update
sudo apt-get -y install pghero
sudo pghero config:set DATABASE_URL=postgres://qiye:123@127.0.0.1:5524/autoscaler

sudo pghero config:set PORT=3001
sudo pghero config:set RAILS_LOG_TO_STDOUT=disabled
sudo pghero scale web=1
