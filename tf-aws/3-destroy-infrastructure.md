[Destroy Infrastructure](https://learn.hashicorp.com/tutorials/terraform/aws-destroy?in=terraform/aws-get-started#destroy)  
terraform destroy
```commandline
The terraform destroy command terminates resources managed by your Terraform project. This command is the inverse of 
terraform apply in that it terminates all the resources specified in your Terraform state. It does not destroy 
resources running elsewhere that are not managed by the current Terraform project.

$ terraform destroy
aws_instance.app_server: Refreshing state... [id=i-020eaf6f7945ebd32]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with 
the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.app_server will be destroyed
  - resource "aws_instance" "app_server" {
      - ami                                  = "ami-08d70e59c07c61a3a" -> null
      - arn                                  = "arn:aws:ec2:us-west-2:792773549356:instance/i-020eaf6f7945ebd32" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-west-2b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-020eaf6f7945ebd32" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = "eni-017e2b5c3c3a9ec4e" -> null
      - private_dns                          = "ip-172-31-31-232.us-west-2.compute.internal" -> null
      - private_ip                           = "172.31.31.232" -> null
      - public_dns                           = "ec2-34-220-128-174.us-west-2.compute.amazonaws.com" -> null
      - public_ip                            = "34.220.128.174" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-bded49c5" -> null
      - tags                                 = {
          - "Name" = "ExampleAppServerInstance"
        } -> null
      - tags_all                             = {
          - "Name" = "ExampleAppServerInstance"
        } -> null
      - tenancy                              = "default" -> null
      - vpc_security_group_ids               = [
          - "sg-e1ca86cf",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-05ae5af7725ff9d10" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.app_server: Destroying... [id=i-020eaf6f7945ebd32]
aws_instance.app_server: Still destroying... [id=i-020eaf6f7945ebd32, 10s elapsed]
aws_instance.app_server: Still destroying... [id=i-020eaf6f7945ebd32, 20s elapsed]
aws_instance.app_server: Still destroying... [id=i-020eaf6f7945ebd32, 30s elapsed]
aws_instance.app_server: Destruction complete after 31s

Destroy complete! Resources: 1 destroyed.

```