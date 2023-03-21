#!/bin/bash

# replace where needed

aws cloudwatch get-metric-statistics --namespace AWS/EC2 --metric-name CPUUtilization --dimensions Name=AutoScalingGroupName,Value=eks-mongodb-e2c33e06-97bf-b402-0680-844289792969 --statistics Maximum --start-time 2023-03-19T00:00:00 --end-time 2023-03-20T00:00:00 --period 360 --region ap-southeast-1