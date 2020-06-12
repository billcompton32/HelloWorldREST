#!/bin/bash

echo "***********************************************************************"
echo "***********************************************************************"
echo "***********************************************************************"
echo
echo "Deploying to target ..."

echo "***********************************************************************"
echo "***********************************************************************"


set -x

# AppServerIpAddress=54.213.9.51

scp -i ~/pem/JenkinsServerKeyPair.pem target/actuator-service-0.0.1-SNAPSHOT.jar ubuntu@${AppServerIpAddress}:app
ssh -i ~/pem/JenkinsServerKeyPair.pem ubuntu@${AppServerIpAddress} "sudo systemctl restart my-webapp"
