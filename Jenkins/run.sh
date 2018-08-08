#!/bin/sh

docker run -d -p 8080:8080 -v $PWD/jenkins_data:/opt/jenkins/data --privileged --name jenkins solonchen/dockerjenkins
