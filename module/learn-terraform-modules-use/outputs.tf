# Output variable definitions

# https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/2.21.0?tab=outputs
output "vpc_public_subnets" {
  description = "IDs of the VPC's public subnets"
  value       = module.vpc.public_subnets
}

# https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/2.12.0?tab=outputs
output "ec2_instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = module.ec2_instances.public_ip
}

# https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/2.12.0?tab=outputs
output "ec2_instance_availability_zone" {
  description = "Availability zone of EC2 instances"
  value       = module.ec2_instances.availability_zone
}

