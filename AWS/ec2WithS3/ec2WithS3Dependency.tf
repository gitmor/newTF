provider "aws" {
  region     = "us-east-1"
  version = "~> 1.27"
}


resource "aws_instance" "example" {
  ami           = "ami-july16"
  instance_type = "t2.micro"

  # Tells Terraform that this EC2 instance must be created only after the
  # S3 bucket has been created.
  depends_on = ["aws_s3_bucket.example"]
  }

# New resource for the S3 bucket our application will use.
resource "aws_s3_bucket" "example" {
  # NOTE: S3 bucket names must be unique across _all_ AWS accounts, so
  # this name must be changed before applying this example to avoid naming
  # conflicts.
  bucket = "vkvjuly-terraform-start-guide"
  acl    = "private"
}
