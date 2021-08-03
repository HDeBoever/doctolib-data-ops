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

# Configure the EC2 instance details
resource "aws_instance" "ec2_doctolib" {
    ami = "ami-0f7cd40eac2214b37"
    instance_type = "t2.micro"
        tags = {
            Name = "doctolib-ec2"
        }
}

# Answer for Q2 
#
# I would connect to the EC2 instance using SSH and a private .pem key file. 
# This would allow me to authenticate myself using the credentials recognized by AWS for my instance. 
# Doing this will give my key confirmed identity access as a known host to the EC2 instance.  
# Edit the inbound rules to allow connections via SSH on port 22
# Ensure to change the permissions on the private key to 400 making it read only by you.

resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create "doctolib-public-key" to AWS
resource "aws_key_pair" "kp-doctolib" {
  key_name   = "doctolib-public-key"      
  public_key = tls_private_key.pk.public_key_openssh

  # Create "doctolib-private-key.pem" to your local machine
  provisioner "local-exec" { 
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./doctolib-private-key.pem"
  }
}
