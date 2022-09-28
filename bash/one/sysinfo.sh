#!/bin/bash

# simple name of machine or user
echo "hostname: -"
hostname
echo " +_+_+_+_+_+_+_+_+_+_+_+ "
# complete information regarding the host machine and user
echo "Full Information: -"
hostnamectl
echo " +_+_+_+_+_+_+_+_+_+_+_+ "
# OS full name and version
hostnamectl | grep -h "Ope"
echo " +_+_+_+_+_+_+_+_+_+_+_+ "
# ip addresses
echo "ip addr: - "
hostname -I
echo " +_+_+_+_+_+_+_+_+_+_+_+ "
# space available (root)
echo "Space Information: - "
df | grep -h "/dev/sda"