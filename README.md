## An example use of LaunchDarkly's Terraform provider for managing custom roles

Instructions:
1. Clone this repository.
2. [Install Terraform](https://developer.hashicorp.com/terraform/install).
3. In `variables.tf`, update the `default` value of the `LD_API_KEY`. Make sure to use an API key with sufficient permission for the required operations.
4. In your terminal, run `terraform init`.
5. `terraform plan` -> this will output the overview of the resources that will be created/modified/deleted by the script. 
6. If all looks good, `terraform apply` && `yes` will execute the changes.