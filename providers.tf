#
# Provider Configuration
#
provider "aws" {
  region  = "aws_region"
  version = "~> 2.19"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {
  version = "~> 1.1"
}

# Save Terraform State to S3 Bucket
terraform {
  backend "s3" {
    bucket = "uranus-terraform-backend"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
