# Sets up an S3 bucket to store the remote states of all modules
resource "aws_s3_bucket" "remote_state" {
  bucket = var.remote_state_bucket
  acl    = "private"
  region = var.region

  versioning {
    enabled = true
  }

  tags = {
    Name = "remote_state_bucket"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

