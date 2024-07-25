#!/bin/bash

###############################
# Author: Sourav
# Date: 25th Jun
# Version: v1

# This script will report the AWS Resource Usage
###############################
set -x
###############################
# Resources to track
# 1. AWS S3
# 2. AWS EC2
# 3. AWS Lambda
# 4. AWS IAM Users
###############################

# list S3 buckets
echo "Print the list of S3 buckets"
aws s3 ls

# list EC2 instances
echo "Print the list of ec2 instances"
aws ec2 describe-instances | jq. ' Reservations[].Instances[].InstanceId '

# list lambda functions
echo "Print the list of lambda functions"
aws lambda list-functions

# list IAM users
echo "Print the list of IAM users"
aws iam list-users
