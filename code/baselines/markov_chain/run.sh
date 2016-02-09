#!/bin/bash

data_root=../../../data
subfolder=real

task=taxi

event_prefix=pickup_events
time_prefix=pickup_time

order=3

echo 'predicting ' $task 'using order=' $order
echo '============= event =============='
python markov_chain_baseline.py $data_root/$subfolder/$task/$event_prefix $order
#python multiorder_markov_baseline.py $data_root/$subfolder/$task/$event_prefix $order
echo '============= end of event =============='
