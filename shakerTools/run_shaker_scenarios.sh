#!/bin/bash
#shake
DATES=$(date "+%Y-%m-%d")
RUNNUMS=1

source /root/shaker/bin/activate
source /root/keystonercv3
cd /root/shaker


#openstack scenarios
#dense_l2.yaml
#dense_l3_east_west.yaml
#dense_l3_north_south.yaml
#full_l2_single.yaml
#full_l2.yaml
#full_l3_east_west.yaml
#full_l3_north_south.yaml
#perf_l2.yaml
#perf_l3_east_west.yaml
#perf_l3_north_south.yaml
#udp_l2.yaml
#udp_l3_east_west.yaml
#udp_l3_north_south.yaml

list_l2="full_l2_single perf_l2 udp_l2 dense_l2"
list_l3="full_l3_east_west full_l3_north_south perf_l3_east_west perf_l3_north_south udp_l3_east_west udp_l3_north_south dense_l3_east_west dense_l3_north_south"
#L2
for i in ${list_l2};do
   for ((j=1;j<=${RUNNUMS};j++));do
      shaker --server-endpoint 10.2.4.251:50000 --scenario openstack/${i} --report /root/shaker/result/${i}_report_${DATES}-${j}.html
      sleep 10
   done 

   sleep 5
done
#L3
for i in ${list_l3};do
   for ((j=1;j<=${RUNNUMS};j++));do
      shaker --server-endpoint 10.2.4.251:50000 --scenario openstack/${i} --report /root/shaker/result/${i}_report_${DATES}-${j}.html
      sleep 10
   done 

   sleep 5
done
