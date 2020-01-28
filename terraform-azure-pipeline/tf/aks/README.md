# Azure Kubernetes Service Module

This module is responsible for the deployment of Azure Kubernetes Service inside a given environment. The module is developed in its own repository [here](https://github.com/jcorioland/terraform-azure-ref-aks-module).

The [environment-base](../environment-base/README.md) deployment has to be run before this one.

# Usage

Create a service principal for Azure Kubernetes Service, following [this documentation](https://docs.microsoft.com/en-us/azure/aks/kubernetes-service-principal).

Export service principal client id and client secret into Terraform environment variables:

```bash
export TF_VAR_service_principal_client_id     ="<YOUR_SP_CLIENT_ID>"
export TF_VAR_service_principal_client_secret ="<YOUR_SP_CLIENT_SECRET>"
export TF_VAR_environment                     = "development"
export TF_VAR_location                        = "francecentral"
export TF_VAR_kubernetes_version              = "1.15.5"
export TF_VAR_ssh_public_key                  = "<YOUR_SSH_PUBLIC_KEY>"
```

Then run the following script to deploy in the `deployment environment`.

```bash
ENVIRONMENT_NAME="development"

# init terraform and backend storage
./init.sh $ENVIRONMENT_NAME

terraform apply -auto-approve
```