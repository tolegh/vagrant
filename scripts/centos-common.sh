#!/bin/bash

#Update Centos is patches but exclude kernel packages
yum update -y --exclude=kernel

#Tools
yum install -y nano git unzip screen nc telnet


