#!/bin/bash
# Deploy network resources with CloudFormation
aws cloudformation deploy \
  --template-file ../cloudformation/network.yaml \
  --stack-name e-commerce-network \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
