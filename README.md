Google account to be used for this task : 

deboever.doctolib@gmail.com
&;Z$XHj9+w!%`7hT

Amazon account created with alternate google account details : 

deboever.doctolib@gmail.com
nJhc-G"m^-&cV7-

username : deboever.doctolib


Create a main.tf script to spin up an AWS E2C instance. 

run terraform init before running terraform plan

-- Old contents of variables.tf

variable "access_key" {
    access_key = "AKIA4K4QQ4ORI6WBVRYZ"
    type = string
    description = "AWS public access key for this project"
}

variable "secret_key" {
    secret_key = "UCruVdnmrPCEf6igWtlfbIcS+gCspNLMfmkVLjXx"
    type = string
    description = "AWS private key for this project"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "private_key_doctolib.pem"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}
