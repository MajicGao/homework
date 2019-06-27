#!/bin/bash
DIRNAME='Is/root|grep bak'
if [-z"$DIRNAME"];
then mkdir /root/bak
cd /root/bak
fi
YY='date+%y'
MM='date+%m'
DD='date+%d'
BACKETC=$YY$MM$DD_etc.tar.gz
tar zcvf $BACKETC /etc
echo "fil!"

