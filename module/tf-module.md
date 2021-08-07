###[Terraform Module](https://learn.hashicorp.com/collections/terraform/modules)
###[Modules Overview](https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules)
####[terraform-aws-modules/vpc](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/2.21.0)
###[Use Modules from the Registry](https://learn.hashicorp.com/tutorials/terraform/module-use?in=terraform/modules)
```text
$ git clone https://github.com/hashicorp/learn-terraform-modules-use.git
$ cd learn-terraform-modules

open main.tf

This configuration includes four blocks:

terraform configures Terraform itself. This block requires the aws provider from the official Hashicorp provider registry.
provider "aws" defines your provider. Depending on the authentication method you chose, you may need to include 
    additional arguments in the provider block.
module "vpc" defines a Virtual Private Cloud (VPC), which will provide networking services for the rest of your 
    infrastructure.
module "ec2_instances" defines two EC2 instances within your VPC.

$ terraform init
$ terraform apply
...
Apply complete! Resources: 22 added, 0 changed, 0 destroyed.

Outputs:

ec2_instance_public_ips = [
  "35.166.182.73",
  "34.215.158.141",
]
vpc_public_subnets = [
  "subnet-0620625ba5174ab71",
  "subnet-071f800c6c8b8468b",
]

Understand how modules work
When using a new module for the first time, you must run either terraform init or terraform get to install the module. 
When either of these commands are run, Terraform will install any new modules in the .terraform/modules directory 
within your configuration's working directory. For local modules, Terraform will create a symlink to the module's 
directory. Because of this, any changes to local modules will be effective immediately, without having to re-run 
terraform get.

After following this tutorial, your .terraform/modules directory will look something like this:

.terraform/modules/
├── ec2_instances
├── modules.json
└── vpc

Clean up
$ terraform destroy
```

###[Module calling](https://www.terraform.io/docs/language/modules/syntax.html#calling-a-child-module)
```text
To call a module means to include the contents of that module into the configuration with specific values for its
input variables. Modules are called from within other modules using module blocks:

module "servers" {          # "servers" is the calling module
  source = "./app-cluster"  # "./app-cluster" is the child module

  servers = 5
}
A module that includes a module block like this is the calling module of the child module.
```

###[Providers Within Modules](https://www.terraform.io/docs/language/modules/develop/providers.html)
```text
Each resource in the configuration must be associated with one provider configuration. Provider configurations, unlike
most other concepts in Terraform, are global to an entire Terraform configuration and can be shared across module 
boundaries. Provider configurations can be defined only in a root Terraform module

A module intended to be called by one or more other modules must not contain any provider blocks. A module 
containing its own provider configurations is not compatible with the for_each, count, and depends_on arguments 
that were introduced in Terraform v0.13
```

##[Provider configurations]()