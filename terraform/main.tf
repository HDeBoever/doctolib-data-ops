terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

# Configure the E2C instance details
resource "aws_instance" "e2c_doctolib" {
    ami = "ami-0f7cd40eac2214b37"
    instance_type = "t2.micro"
        tags = {
            Name = "doctolib-e2c"
        }
}

# Answer for Q2 
#
# I would connect to the E2C instance using SSH and a private .pem key file. 
# This would allow me to authenticate myself using the credentials recognized by AWS for my instance. 
# Doing this will give my key confirmed identity access as a known host to the E2C instance.  
