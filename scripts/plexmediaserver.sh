#!/bin/bash

# Adding plex to sources list for automatic updates
echo deb https://downloads.plex.tv/repo/deb public main \
  | tee /etc/apt/sources.list.d/plexmediaserver.list
# Retrieving key
curl https://downloads.plex.tv/plex-keys/PlexSign.key | apt-key add -

# Updating & installing
apt-get update
apt-get -y install plexmediaserver

systemctl enable plexmediaserver.service
systemctl start plexmediaserver.service
