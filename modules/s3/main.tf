module "s3" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "4.2.1"

  bucket = var.bucket_name
  acl = "private"
  tags = {
    "Environment" = var.environment
  }
}
