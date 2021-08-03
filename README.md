Google account to be used for this task : 

deboever.doctolib@gmail.com
###

Amazon account created with alternate google account details : 

deboever.doctolib@gmail.com
###

username : deboever.doctolib


Q1 : 

Create a main.tf script to spin up an AWS E2C instance.

After doing a terraform apply, we see that the instance is sucessfully created : 

![image](https://user-images.githubusercontent.com/16905166/127865952-342a8abe-ce03-477d-85da-e2e63552e380.png)

I followed the instructions from the Hashicorp documentation : 
https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started

Q2 :

- I would connect to the EC2 instance using SSH and a private .pem key file. 
- This would allow me to authenticate myself using the credentials recognized by AWS for my instance. 
- Doing this will give my key confirmed identity access as a known host to the EC2 instance.  
- Edit the inbound rules to allow connections via SSH on port 22
- Ensure to change the permissions on the private key to 400 making it read only by you.

Answer can be seen in main.tf



