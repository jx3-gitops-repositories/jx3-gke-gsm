#!/bin/bash

set -e

# in case we are in a clean git clone...
terraform init $TERRAFORM_INPUT

# we are about to remove the kubernetes cluster anyway so lets avoid having terraform try and remove k8s resources
terraform state list | grep .kubernetes_service_account. | while read line
do
if [ -z "$line" ]
then
      echo "ignoring empty line"
else
      echo "removing terraform state of $line"
      terraform state rm $line
fi
done

terraform state list | grep .kubernetes_namespace. | while read line
do
if [ -z "$line" ]
then
      echo "ignoring empty line"
else
      echo "removing terraform state of $line"
      terraform state rm $line
fi
done


terraform destroy $TERRAFORM_APPROVE

