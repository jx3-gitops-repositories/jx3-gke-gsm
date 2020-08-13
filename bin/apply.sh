#!/bin/bash

set -e

terraform init $TERRAFORM_INPUT
terraform apply $TERRAFORM_INPUT $TERRAFORM_APPROVE

# connect to the cluster
eval $(terraform output connect)
