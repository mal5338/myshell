#!/bin/sh
work_day=`date +%Y%m%d`

cd /home/git/repobak/workdir

rm -rf *

tar -cvf /home/git/repobak/workdir/repositories-$work_day.tar /home/git/repositories
