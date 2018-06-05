#!/bin/bash
#shaker_report
#create rst files

source /root/shaker/bin/activate

cd /tmp

mkdir -p /mnt/allresult

for i in $(ls|grep shaker);do

echo ${i:7:10}_${i:27:6}
suffix=${i:7:10}_${i:27:6}

scename=$(grep file_name ${i}|cut -d'"' -f4|cut -d'/' -f10|cut -d'.' -f1)

mkdir /mnt/${scename}_${suffix}

shaker-report --input ${i} --book /mnt/${scename}_${suffix}/
sleep 3

mv /mnt/${scename}_${suffix}/index.rst /mnt/${scename}_${suffix}/${scename}_${suffix}.rst

sed -i 's/\.\*/\.svg/' /mnt/${scename}_${suffix}/${scename}_${suffix}.rst

cp /mnt/${scename}_${suffix}/* /mnt/allresult

done