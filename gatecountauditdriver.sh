#!/bin/bash
##########################################################
#
# Gate Count audit driver for cron.
#
##########################################################
ADDRESSES=anisbet\@epl.ca
HOME_DIR=/home/ilsdev/projects/gatecountaudit
cd $HOME_DIR
if [ -s $HOME_DIR/gatecountaudit.pl ]
then
	$HOME_DIR/gatecountaudit.pl -R >log.txt 2>&1
	cat log.txt | mailx -s"Gate count repair results." $ADDRESSES
else
	echo "** error could not find $HOME_DIR/gatecountaudit.pl"
	exit 99
fi

#EOF
