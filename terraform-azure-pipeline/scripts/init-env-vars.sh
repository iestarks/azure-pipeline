#!/bin/bash

set -e

export LOCATION=eastus2
export COMMON_RESOURCE_GROUP_NAME=az-terraform-ref-rg
export TF_STATE_STORAGE_ACCOUNT_NAME=tfstate8e1ab
export TF_STATE_CONTAINER_NAME=tfstate-ref-bucket
export KEYVAULT_NAME=terraform-ref-8e1abkv
