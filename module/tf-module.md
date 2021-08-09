###[Terraform Module](https://learn.hashicorp.com/collections/terraform/modules)
###[Modules Overview](https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules)

###[Use Modules from the Registry](https://learn.hashicorp.com/tutorials/terraform/module-use?in=terraform/modules)
###[Build and Use a Local Module](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules)

####[terraform-aws-modules/vpc](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/2.21.0)
###[Use Modules from the Registry](https://learn.hashicorp.com/tutorials/terraform/module-use?in=terraform/modules)

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