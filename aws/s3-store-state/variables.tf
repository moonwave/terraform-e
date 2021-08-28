variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "mw-app-instance"
}

variable "region" {
  description = "aws region"
  type        = string
  default     = "us-west-2"
}

variable "key" {
  description = "key (path) in s3 bucket"
  type        = string
  default     = "dev/mw-vpc/terraform.tfstate"
}
