# Save Terraform State to S3 Bucket
terraform {
  backend "s3" {
    bucket = "199504419966-uranus-terraform-backend"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}