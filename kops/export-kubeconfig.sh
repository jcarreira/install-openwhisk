#!/bin/bash

export KOPS_STATE_STORE=s3://cirrus-kops-store
export KOPS_CLUSTER_NAME=cirrus.k8s.local

#export KOPS_STATE_STORE=s3://clusters.kubernetes.riotfork.com
#export KOPS_CLUSTER_NAME=eu-central-1.kubernetes.riotfork.com
kops export kubecfg
