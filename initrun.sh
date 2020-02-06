#!/bin/sh

BASE_DIR=/opt/pps
if [ -e /tmp/PPStrong.runpath ]; then
	BASE_DIR=`cat /tmp/PPStrong.runpath`
fi

if [ ! -e ${BASE_DIR} ]; then
	exit
fi

tar xzf ${BASE_DIR}/app.tar.gz -C /
umount ${BASE_DIR}

home/init.d/initS &

