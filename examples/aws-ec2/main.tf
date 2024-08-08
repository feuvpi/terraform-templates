# Configure the AWS provider
provider "aws" {
  # The AWS region to use for the resources
  region = var.region
}

# Use the aws-vpc module to create a VPC and subnets
module "vpc" {
  # The source location of the module
  source = "../../modules/aws-vpc"

  # Add necessary variables here
}

# Create an EC2 instance within the VPC
resource "aws_instance" "example" {
  # The AMI to use for the instance
  ami = "ami-0abcdef1234567890"

  # The instance type to use for the instance
  instance_type = "t2.micro"

  # The ID of the subnet to use for the instance
  subnet_id = module.vpc.public_subnet_ids[0]

  # Add necessary configurations here
}
