output "s3_bucket_name" {
  description = "The S3 bucket name"
  value       = module.s3.bucket_id
}
