# Configure the AWS Provider

# provider "aws" {
#     region     = "us-east-1"
#     access_key = ""
#     secret_key = ""
# }

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

variable "aws_access_key" {
  description = "Enter AWS access key"
}

variable "aws_secret_key" {
  description = "Enter AWS secret key"
}

variable "region" {
  description = "Select the default AWS region for the deployment."
}

variable "tags" {
  description = "Tags values are defined in dev.tfvars"
  type = list
}