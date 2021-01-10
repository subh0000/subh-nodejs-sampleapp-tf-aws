#!/bin/bash
sudo yum install -y aws-cli


echo ECS_CLUSTER=ecs-subh-nodejs-cluster >> /etc/ecs/ecs.config
