#!/bin/bash
# Deploy database resources with CloudFormation
aws cloudformation deploy \
  --template-file ../cloudformation/databases.yaml \
  --stack-name e-commerce-databases \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
