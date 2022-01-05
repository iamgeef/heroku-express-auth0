# heroku-auth0-template

This is a template for a Terraform configuration that deploys a basic expressJS web-app with auth0 authentication onto heroku.  
The web-app is taken from the official auth0 blog post: https://auth0.com/blog/create-a-simple-and-secure-node-express-app/  
_source code_: https://github.com/auth0-blog/wab-portal-express

## Requirements

Heroku account created  
Payment method added to the heroku account

## Important

Terraform is **NOT** configured with a remote backend so your state file will be local to the machine where you are running the commands.

## How to use

Create your tfvars file using the provided `./terraform/vars.tfvars` file.

![image info](./img/vars.png)

_**note**: your heroku_app_name must be unique. If someone has already used it, you'll get the following error:_

![image info](./img/name_error.png)

From the `terraform` directory, initialise Terraform `terraform init`.

![image info](./img/init.png)

From the `terraform` directory run `terraform apply -var-file=vars.tfvars`

![image info](./img/apply.png)

Once deployed, use the heroku console to sso into the auth0 console for your addon config:

![image info](./img/auth0-link.png)

navigate to the default application config

![image info](./img/auth0-default.png)

add the heroku app domain to the allowed logout urls:

![image info](./img/auth0-logout.png)

Go to your heroku-url and click the login button to start the auth0 process.

![image info](./img/login.gif)

## Cleanup

Run `terraform destroy -var-file=vars.tfvars` to remove the resources.
