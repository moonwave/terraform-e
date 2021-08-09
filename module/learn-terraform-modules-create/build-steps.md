###[Build and Use a Local Module](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules)

Build and Use a Local Module
```text
git clone https://github.com/hashicorp/learn-terraform-modules-create.git
In this tutorial, you will create a module to manage AWS S3 buckets used to host static websites.
$ terraform apply
$ aws s3 cp modules/aws-s3-static-website-bucket/www/ s3://$(terraform output -raw website_bucket_name)/ --recursive

https://<YOUR BUCKET NAME>.s3-us-west-2.amazonaws.com/index.html

https://mw-test-aug-08-2021.s3-us-west-2.amazonaws.com/index.html
https://mw-test-aug-08-2021.s3-us-west-2.amazonaws.com/error.html
```

Clean up the website and infrastructure
```text
If you have uploaded files to your bucket, you will need to delete them before the bucket can be destroyed.
For example, you could run:

$ aws s3 rm s3://$(terraform output -raw website_bucket_name)/ --recursive
delete: s3://robin-test-2020-01-15/index.html
delete: s3://robin-test-2020-01-15/error.html

$ terraform destroy
```

