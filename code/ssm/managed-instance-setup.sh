#!/bin/bash
mkdir /tmp/ssm
curl https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm -o /tmp/ssm/amazon-ssm-agent.rpm
sudo yum install -y /tmp/ssm/amazon-ssm-agent.rpm
sudo systemctl stop amazon-ssm-agent
# edit the code, id and region in the command below
sudo amazon-ssm-agent -register -code "HB3+x+3UtZSYzPD8g29C" -id "6dfda937-0ac8-4bb1-9c51-14f11b4954ac" -region "ap-southeast-1"
sudo systemctl start amazon-ssm-agent

## 
Activation Code   HB3+x+3UtZSYzPD8g29C
Activation ID   6dfda937-0ac8-4bb1-9c51-14f11b4954ac

## UBUNTU
snap install amazon-ssm-agent --classic 
snap stop amazon-ssm-agent
amazon-ssm-agent -register -code "Iu/EQTLhAbYZR82uVMqF" -id "336411e8-04bb-4328-b487-c5a030797a8f" -region "ap-southeast-1"
snap start amazon-ssm-agent