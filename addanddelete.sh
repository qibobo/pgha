#!/bin/bash
max=100
for i in `seq 1 $max`
do
  psql -U qiye -h 127.0.0.1 -p 5524 -d autoscaler -c "insert into test(name) values('qiye')"
  psql -U qiye -h 127.0.0.1 -p 5524 -d autoscaler -c "insert into test(name) values('qibobo')"   
done
  psql -U qiye -h 127.0.0.1 -p 5524 -d autoscaler -c "delete from test where name='qiye'"
