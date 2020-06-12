#!/bin/bash

echo "***********************************************************************"
echo "***********************************************************************"
echo "***********************************************************************"
echo
echo "Deploying to target ..."

echo "***********************************************************************"
echo "***********************************************************************"


set -x

TargetIP=54.213.9.51

scp -i ~/pem/JenkinsServerKeyPair.pem target/actuator-service-0.0.1-SNAPSHOT.jar ubuntu@${TargetIP}:app
ssh -i ~/pem/JenkinsServerKeyPair.pem ubuntu@${TargetIP} "sudo systemctl restart my-webapp"
