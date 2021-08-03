terraform {
  backend "remote" { # https://app.terraform.io/app/moonwave/workspaces/moonwave-apps/runs
    organization = "moonwave"

    workspaces {
      name = "moonwave-apps"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  shared_credentials_file = "/home/moonwave/.aws/credentials"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {    # app_server is the resource name
  ami           = "ami-08d70e59c07c61a3a" # was ami-830c94e3
  instance_type = "t2.micro"

  tags = {
    # https://learn.hashicorp.com/tutorials/terraform/aws-variables?in=terraform/aws-get-started
    # Name = "ExampleAppServerInstance"
    Name = var.instance_name
  }
}
