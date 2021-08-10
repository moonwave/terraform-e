# https://www.terraform.io/docs/language/settings/backends/s3.html
# configure terraform to store tfstate files in a S3 bucket

terraform {
    backend "s3" {
        encrypt = true
        bucket = "mw-bucket-1"
        key    = "dev/vpc/terraform.tfstate"
        region = "us-west-2"
        dynamodb_table = "terraform-locks-dev"
    }
}

terraform {
    backend "remote" {
        hostname = "moonwave.org"
        organization = "moonwave"
        workspaces = {
            name = "moonwave-dev"
        }
    }
}

provider "aws" {
    region = "us-west-2"
    version = "~> 2.17"
}

resource "null_resouce" "output_trigger" {
    triggers = {
        one = 1
    }
}
