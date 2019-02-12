#!/bin/bash

echo "This will permanently delete your Kubernetes cluster including all persistent volume claims!"
read -p "Do you want to proceed? (y/n) " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo ""
    exit 0
fi

echo ""
export KOPS_STATE_STORE=s3://cirrus-kops-store
export KOPS_CLUSTER_NAME=cirrus.k8s.local
kops delete cluster --yes
