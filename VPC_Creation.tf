provider "aws" {
  version = "~> 2.0"
#  access_key = access_key  # If you have already configured AWS-CLI then this is not required.
#  secret_key = secret_key  # If you have already configured AWS-CLI then this is not required.
  region     = "ap-south-1"
}


# create the VPC. You can change the VPC name and CIDR block as per your requirement.
resource "aws_vpc" "Terraform_VPC" {
  cidr_block           = "10.10.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
tags = {
    Name = "Terraform VPC"
    }
} # end resource
