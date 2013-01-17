#!/bin/sh

while :
do
        dd if=$1 of=/dev/fb0 bs=1
done
