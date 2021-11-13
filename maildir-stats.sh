#!/bin/bash
#
# Script Name   : maildir-stats.sh
# Description   : Useful statistical output of Maildir user mailboxes
# Author        : https://github.com/filipnet/maildir-stats
# License       : BSD 3-Clause "New" or "Revised" License
# =======================================================================================

renice -n 10 $$ > /dev/null
export LC_ALL=de_DE.utf8

CURRENTDATE=`date '+%Y-%m-%d'`
TIME_START=$(date +"%s")
HOMEDIR="/home"
USERDIR=(`find $HOMEDIR -mindepth 1 -maxdepth 1 -type d`)

TABLE="HOMEDIR|SIZE|COUNT|NEW|CUR|TMP|DIR|READ|UNREAD|TRASH\n"
for i in "${USERDIR[@]}"
do
	:
	MAILBOX_MAILDIR="$i/Maildir"
	MAILBOX_SIZE=`du $i/Maildir -sh | cut -f1`
	MAILBOX_COUNT=`find $i/Maildir -type f | wc -l`
	MAILBOX_COUNT_NEW=`find $i/Maildir/new -type f | wc -l`
	MAILBOX_COUNT_CUR=`find $i/Maildir/cur -type f | wc -l`
	MAILBOX_COUNT_TMP=`find $i/Maildir/tmp -type f | wc -l`
	MAILBOX_COUNT_DIR=`find $i/Maildir -type d | wc -l`
	MAILBOX_READ=`find $i/Maildir -type f | grep -E ',[^,]*S[^,]*$' | wc -l`
	MAILBOX_UNREAD=`find $i/Maildir -type f | grep -vE ',[^,]*S[^,]*$' | wc -l`
	MAILBOX_TRASH=`find $i/Maildir/.Trash -type f 2> /dev/null | wc -l`

	TABLE+="${MAILBOX_MAILDIR}|${MAILBOX_SIZE}|${MAILBOX_COUNT}|${MAILBOX_COUNT_NEW}|${MAILBOX_COUNT_CUR}|${MAILBOX_COUNT_TMP}|${MAILBOX_COUNT_DIR}|${MAILBOX_READ}|${MAILBOX_UNREAD}|${MAILBOX_TRASH}\n"
done

TIME_DIFF=$(($(date +"%s")-${TIME_START}))
echo -e $TABLE | column -t -s "|"
echo -e "\nRuntime: $((${TIME_DIFF} / 60)) Minutes $((${TIME_DIFF} % 60)) Seconds\n"
