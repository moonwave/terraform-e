[Query Data with Outputs](https://learn.hashicorp.com/tutorials/terraform/aws-outputs?in=terraform/aws-get-started)  
Output configuration

```text
cat > outputs.tf
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}
```
Inspect output values

```text
$ terraform plan
$ terraform apply
...
Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

aws_instance.app_server: Modifying... [id=i-01713e55526658bc4]
aws_instance.app_server: Modifications complete after 2s [id=i-01713e55526658bc4]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

Outputs:

instance_id = "i-01713e55526658bc4"
instance_public_ip = "34.212.35.181"

$ terraform output
```
[Destroy infrastructure](./3-tf-aws-destroy-infra.md)

```text
$ terraform destroy
...
Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes
...
Destroy complete! Resources: 1 destroyed.
```
