###[terraform training](https://github.com/rptcloud/terraform_training)
```text
$ terraform init | plan | apply
$ terraform show
$ terraform fmt

$ terraform console
> aws_instance.web.public_ip
> aws_instance.web.*

$ echo "aws_instance.web.public_ip" | terraform console 

variable "animal" {
    type = "string"
    default = "dog"
    description = "Pets"
}

variable "zones" {
    type = "list"
    default = ["us-east-1", "us-east-2"]
}

New Format      Prior to 0.12 format
var.<name> ==> "${var.<name>}"

Plugins
    https://github/awslabs/git-secrets

Top level keywords
    provider    module  variable    data    resource
    terraform   output  locals (local values)

terraform init - to install new terraform providers and modules

public module registry:
    https://registry.terraform.io/
```