# https://www.terraform.io/docs/language/settings/backends/s3.html
# configure terraform to store tfstate files in a S3 bucket

terraform {
    backend "s3" {
        encrypt = true
        bucket = "terramw-state"
        key    = "dev/vpc/terraform.tfstate"
        region = "us-west-2"
        dynamodb_table = "terraform-locks-dev"
        # table name: terraform-locks-dev, primary key: LockID
        # arn:aws:dynamodb:us-west-2:792***356:table/terraform-locks-dev
    }
}

# see ../store-remote-state/main.tf
#terraform {  # only one backend can be defined
#    backend "remote" { # using terraform cloud
#        hostname = "moonwave.org"
#        organization = "moonwave"
#        workspaces = {
#            name = "moonwave-dev"
#        }
#    }
#}

provider "aws" {
    region = "us-west-2"
    version = "~> 2.17"
}

resource "null_resource" "output_trigger" {
    triggers = {
        one = 1
    }
}
