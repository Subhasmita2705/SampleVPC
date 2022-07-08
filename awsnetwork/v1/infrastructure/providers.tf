terraform {
required_providers {
aws = {
source = "hashicorp/aws"
version = "~> 3.0"
}
}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  access_key = "AKIATC4BRTUBCCIPXTQX"
  secret_key = "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"
}