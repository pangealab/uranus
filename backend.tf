# Save Terraform State to S3 Bucket
terraform {
  backend "s3" {
    bucket = "748296165695-uranus-terraform-backend"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}