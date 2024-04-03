#!/bin/bash
# Setup EKS cluster with eksctl
eksctl create cluster \
  --name e-commerce-eks \
  --version 1.21 \
  --region us-east-1 \
  --nodegroup-name standard-workers \
  --node-type t3.medium \
  --nodes 3 \
  --nodes-min 1 \
  --nodes-max 4 \
  --managed
