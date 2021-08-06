Google account to be used for this task : 

deboever.doctolib@gmail.com
###

Amazon account created with alternate google account details : 

deboever.doctolib@gmail.com
###

username : deboever.doctolib


# Q1 : 

Create a main.tf script to spin up an AWS E2C instance.

After doing a terraform apply, we see that the instance is sucessfully created : 

![image](https://user-images.githubusercontent.com/16905166/127865952-342a8abe-ce03-477d-85da-e2e63552e380.png)

I followed the instructions from the Hashicorp documentation : 
https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started

# Q2 :

- I would connect to the EC2 instance using SSH and a private .pem key file. 
- This would allow me to authenticate myself using the credentials recognized by AWS for my instance. 
- Doing this will give my key confirmed identity access as a known host to the EC2 instance.  
- Edit the inbound rules to allow connections via SSH on port 22
- Ensure to change the permissions on the private key to 400 making it read only by you.

Answer can be seen in main.tf

# Q3 :

To create a private S3 bucket in AWS, we can use a terraform directive. My solution can be seen in main.tf, variables.tf, and outputs.tf.

![image](https://user-images.githubusercontent.com/16905166/128367069-4db12361-1058-4d3c-afb5-1dfadeb4296f.png)
![image](https://user-images.githubusercontent.com/16905166/128367241-4e1c2c67-d505-4965-b261-bfa5ae4f3d5e.png)


This is the result of the new terraform apply command which creates an S3 bucket with the "can_be_written" folder in it. 

# Q4 : 

Configure the instance to include docker and docker-compose TODO

# Q5 and Q6

![image](https://user-images.githubusercontent.com/16905166/128499017-14d87686-85eb-445a-9ea0-b1446a17bccb.png)

Here are the outputs on my server of the docker images and the docker file being hosted and used on the ec2 instance. 
I hope I followed the specifications, but I would love to talk about this and recieve more guidance during our next interview. 



