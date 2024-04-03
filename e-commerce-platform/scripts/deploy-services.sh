#!/bin/bash

echo "Deploying services to EKS..."

# Assuming AWS and kubectl are already configured
EKS_CLUSTER_NAME="my-eks-cluster"

# Configure kubectl
echo "Configuring kubectl for EKS cluster \$EKS_CLUSTER_NAME..."
aws eks --region us-west-2 update-kubeconfig --name \$EKS_CLUSTER_NAME

# Deploy services using kubectl
echo "Deploying services with kubectl..."
kubectl apply -f path/to/service-one.yaml
kubectl apply -f path/to/service-two.yaml

# Deploy services using Helm
echo "Deploying services with Helm..."
helm upgrade --install service-three path/to/service-three/chart --namespace default
helm upgrade --install service-four path/to/service-four/chart --namespace default

# Wait for deployments to complete
echo "Waiting for deployments to complete..."
kubectl rollout status deployment/service-one -n default
kubectl rollout status deployment/service-two -n default

echo "Services deployment to EKS complete."
