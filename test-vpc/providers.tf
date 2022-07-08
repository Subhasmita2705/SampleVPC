/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-west-2:212335697154:environment/test-vpc

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

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