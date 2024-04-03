#!/bin/bash

echo "Setting up development environment..."

# Install AWS CLI
if ! command -v aws &> /dev/null; then
    echo "Installing AWS CLI..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    echo "AWS CLI installed."
else
    echo "AWS CLI is already installed."
fi

# Install kubectl
if ! command -v kubectl &> /dev/null; then
    echo "Installing kubectl..."
    curl -LO "https://dl.k8s.io/release/\$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl
    echo "kubectl installed."
else
    echo "kubectl is already installed."
fi

# Install Helm
if ! command -v helm &> /dev/null; then
    echo "Installing Helm..."
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
    echo "Helm installed."
else
    echo "Helm is already installed."
fi

# Setup Docker
if ! command -v docker &> /dev/null; then
    echo "Please install Docker."
else
    echo "Docker is already installed. Verifying Docker daemon..."
    if ! systemctl is-active --quiet docker; then
        echo "Starting Docker..."
        sudo systemctl start docker
    fi
    echo "Docker is running."
fi

echo "Development environment setup complete."
