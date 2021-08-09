# Output variable definitions
# A module's outputs can be accessed as read-only attributes on the module object, which is available within the
# configuration that calls the module. You can reference these outputs in expressions as module.<MODULE NAME>.<OUTPUT NAME>.

output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "domain" {
  description = "Domain name of the bucket"
  value       = aws_s3_bucket.s3_bucket.website_domain
}
