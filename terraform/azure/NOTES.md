# Terraform Azure Infrastructure

## What's deployed
- Resource Group: homelab-rg (uksouth)
- Virtual Network: homelab-vnet (10.0.0.0/16)
- Subnet: homelab-subnet (10.0.1.0/24)

## Remote state
- Storage Account: navneettfstate
- Resource Group: terraform-state-rg
- Container: tfstate
- Key: homelab.terraform.tfstate

## CI/CD Pipeline
- File: .github/workflows/terraform.yml
- Triggers: push to master on terraform/** paths
- Steps: fmt → init → validate → plan → apply

## Service Principal
- Name: github-terraform-homelab
- Role: Contributor
- Stored in: GitHub Secrets

## GitHub Secrets required
- AZURE_CLIENT_ID
- AZURE_CLIENT_SECRET
- AZURE_TENANT_ID
- AZURE_SUBSCRIPTION_ID
- AZURE_STORAGE_KEY

## Local commands
terraform init      # initialise
terraform plan      # preview changes
terraform apply     # deploy
terraform destroy   # tear down