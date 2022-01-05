# heroku-auth0-template

This is a template for a Terraform configuration that configures heroku with auth0

Create your tfvars file using the template and run `terraform apply -var-file=myvars.tfvars`

You'll need to add a payment method to your heroku account to use the auth0 addon

Use the heroku console to access the auth0 console, and add the heroku app domain to the allowed logout urls

The website source code in this repo (under source dir) is taken from https://github.com/auth0-blog/wab-portal-express
