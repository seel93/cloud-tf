# Azure infrastructure with Terraform

## Inital setup:
https://docs.microsoft.com/en-us/azure/developer/terraform/quickstart-configure

## Init
`terraform init`

## Execution plan

`terraform plan -out main.tfplan`

## Apply

`terraform apply main.tfplan`

## Clean up
### Planing destroy
`terraform plan -destroy -out main.destroy.tfplan`
### Executin destroy
`terraform apply main.destroy.tfplan`


## Releases:
### v1
infra for colloquim 1 

### v2
