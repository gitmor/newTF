provider "aws" {
  region     = "us-east-1"
  version = "~> 1.27"
}


# New resource for the S3 bucket our application will use.
resource "aws_s3_bucket" "example" {
  # NOTE: S3 bucket names must be unique across _all_ AWS accounts, so
  # this name must be changed before applying this example to avoid naming
  # conflicts.
  bucket = "vkvjuly-terraform-start-guide"
  acl    = "private"
}
