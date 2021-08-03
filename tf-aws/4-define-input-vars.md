[Define Input Variables](https://learn.hashicorp.com/tutorials/terraform/aws-variables?in=terraform/aws-get-started)

```commandline
$ cd learn-terraform-aws-instance
$ cat > variables.tf
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleInstance"
}
In main.tf, update the aws_instance resource block to use the new variable.

resource "aws_instance" "example" {
   ami           = "ami-08d70e59c07c61a3a"
   instance_type = "t2.micro"

   tags = {
-    Name = "ExampleInstance"
+    Name = var.instance_name
   }
}
 
$ terraform plan
$ terraform apply
$ terraform apply -var 'instance_name=mw-instance-by-var' 
```