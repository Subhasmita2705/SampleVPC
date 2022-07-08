/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-west-2:212335697154:environment/test-vpc

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

# Query all avilable Availibility Zone
data "aws_availability_zones" "available" {}

# VPC Creation Block
resource "aws_vpc" "VPC_Proton" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = var.vpc_instance_tenancy
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    CreatedByTerraform = "true"
    Environment        = "Dev"
    Name               = var.vpc_name
  }
}

# Private Subnet
resource "aws_subnet" "private_subnet" {
  cidr_block        = var.private_cidrs
  vpc_id            = aws_vpc.VPC_Proton.id
  availability_zone = data.aws_availability_zones.available.names
  tags = {
    Name = var.private_subnet_name
  }
}
