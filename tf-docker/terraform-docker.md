###[Get started](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started#quick-start-tutorial)
Terraform with Docker
```text
mkdir learn-terraform-docker-container
cd learn-terraform-docker-container

cat > main.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8081
  }
}

terraform init
terraform apply

http://localhost:8081/

terraform destroy
```

###[Terraform with AWS](./aws/1-tf-aws-build-infra.md)
