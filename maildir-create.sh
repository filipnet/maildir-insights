#!/bin/bash
#
# Script Name   : maildir-create.sh
# Description   : Create Maildir, subfolder structure and set permissions for Maildir
# Author        : https://github.com/filipnet/maildir-stats
# License       : BSD 3-Clause "New" or "Revised" License
# =======================================================================================

renice -n 10 $$ > /dev/null
export LC_ALL=de_DE.utf8
RED="\033[0;31m"
NC="\033[0m" # No Color

if [ -n "$1" ]; then 
	echo "Homedirectory: $1" 
fi
if [ -n "$2" ]; then
	echo "Username: $2"
else
	echo -e "${RED}Usage: ./maildir-create.sh /home/max.mustermann max.mustermann${NC}"
	exit 0
fi

echo "Creating cur, new and tmp subfolders"
mkdir -p $1/Maildir/{cur,new,tmp}
echo "Set permissions for Maildir directory and subfolders"
chown -R $2:users $1/Maildir
chmod -R 755 $1/Maildir

