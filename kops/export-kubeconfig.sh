#!/bin/bash
#export KOPS_STATE_STORE=s3://cirrus.kubernetes.riotfork.com
#export KOPS_CLUSTER_NAME=us-west-2.kubernetes.riotfork.com
export KOPS_STATE_STORE=s3://cirrus-kops-store
export KOPS_CLUSTER_NAME=cirrus.k8s.local
kops export kubecfg
