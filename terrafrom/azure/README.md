# Terraform — Azure Infrastructure

## Purpose
Infrastructure as Code for Azure resources.
Manages VNets, VMs, NSGs, and other Azure infrastructure.

## Structure (planned)
terraform/
├── azure/
│   ├── main.tf         ← providers and backend config
│   ├── variables.tf    ← input variables
│   ├── outputs.tf      ← output values
│   └── modules/        ← reusable components
└── README.md

## Tools required
- Terraform CLI
- Azure CLI
- VS Code Terraform extension

## Workflow
1. Write .tf files
2. terraform init
3. terraform plan  (review changes)
4. terraform apply (deploy)
5. git commit changes

## Status
- [ ] Terraform CLI installed
- [ ] Azure provider configured
- [ ] First resource group deployed