# Azure infrastructure with Terraform

## Inital setup:
[terraform quickstart](https://docs.microsoft.com/en-us/azure/developer/terraform/quickstart-configure)

[vite framework](https://vitejs.dev/guide/)

[docker file](https://v2.vuejs.org/v2/cookbook/dockerize-vuejs-app.html)


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


## web application:

Found in `./vite-project`

#### run locally:

Build: `npm install`

run: `npm run dev `

### Docker image
path: `-/vite-project`

build: `docker build <image_name> .`

run: `docker run <image_name`

cmd will display the ip and port the app is running on
