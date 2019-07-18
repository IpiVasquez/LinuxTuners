#!/usr/bash
# Run as sudo
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root, use sudo "$0" instead" 1>&2
   exit 1
fi

# Update
apt-get -y update
apt-get -y upgrade

# Mounting point
mkdir -p -m 777 ~/Shelly

# Verifying
if test -z "$1" 
then
      echo "You should provide the storage source (/dev/sdXN)"
      exit 1
else
      echo "Mounting ($0) at ~/Shelly"
fi

mount $1 ~/Shelly

# Scripts
./scripts/plexmediaserver.sh
