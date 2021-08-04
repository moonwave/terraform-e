###[Terraform Cli](https://www.terraform.io/docs/cli/index.html)
```text
terraform init
terraform get
terraform plan
terraform apply

terraform show
terraform fmt

terraform refresh   - Run the refresh command to pick up the new output
terraform output
terraform output public_dns
ping $(terraform output -raw public_dns)

terraform console
> aws_instance.web.public_ip
> aws_instance.web.*

echo "aws_instance.web.public_ip" | terraform console

Top level keywords
    provider    module  variable    data    resource
    terraform   output  locals (local values)

```
