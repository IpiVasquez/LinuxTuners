#!/bin/bash

__downloads_dir=~/Downloads

mkdir -p __downloads_dir

wget https://downloads.plex.tv/plex-media-server/1.14.1.5488-cc260c476/plexmediaserver_1.14.1.5488-cc260c476_amd64.deb \
  -o -P $__downloads_dir
sudo dpkg -i plexmediaserver*.deb
