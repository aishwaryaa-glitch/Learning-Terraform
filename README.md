# Learning-Terraform
![image](https://github.com/user-attachments/assets/905a824b-5be9-49ea-8c15-1dfeb619aa78)

This is practice to learn how to install and set up terraform to provision + manage AWS Resources.
# INTRODUCTION
**What is Terraform?**

Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It allows users to define and provision infrastructure using a high-level configuration language called HashiCorp Configuration Language (HCL) or optionally JSON. Terraform enables you to create, manage, and update infrastructure resources across various cloud providers and on-premises environments in a consistent, repeatable, and automated manner.

**What is AWS?**

AWS, or Amazon Web Services, is a comprehensive and widely adopted cloud computing platform offered by Amazon. It provides a broad set of cloud-based services, including computing power, storage, databases, networking, analytics, machine learning, security, and application development tools. These services enable organizations to build, deploy, and manage applications and infrastructure in a flexible, scalable, and cost-effective way.

# PRE-REQUISITES
[AWS Account](https://www.google.com/aclk?sa=l&ai=DChcSEwjllPjj6PuHAxVwpWYCHRlVHwYYABABGgJzbQ&co=1&ase=2&gclid=EAIaIQobChMI5ZT44-j7hwMVcKVmAh0ZVR8GEAAYASABEgITNPD_BwE&sig=AOD64_2Pk3SNHdUryjkXO5V121Nu-9XVTA&q&nis=4&adurl&ved=2ahUKEwi6u_Tj6PuHAxWzTGwGHZCKIpUQqyQoAHoECAgQDA)

[Terraform](https://developer.hashicorp.com/terraform/install)

# CREATING AWS EC2 INSTANCE

Search for [**EC2**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html) in AWS console

![image](https://github.com/user-attachments/assets/c4f01374-a52e-402d-89c3-d99318166afe)

Go to **INSTANCES** and **LAUNCH INSTANCE**

![image](https://github.com/user-attachments/assets/5b342aef-1740-431c-b0d6-518e18459098)

Specify **NAME** and [**SELECT IMAGE TYPE**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html) "always try to use free tier image"

![image](https://github.com/user-attachments/assets/57fa40bd-dc60-4f41-8951-619bbde6a281)

Select [**INSTANCE TYPE**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) and [**KEY PAIR**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)

![image](https://github.com/user-attachments/assets/fba65b44-5c70-4b41-aa64-aaf4d8088bdb)

****create a new key pair** if you dont have one

![image](https://github.com/user-attachments/assets/882d70e9-abec-4fa8-869a-0d4112326243)

Create new [**SECURITY GROUP**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html) or selet **DEFAULT** one

![image](https://github.com/user-attachments/assets/255fada3-372e-453e-a314-66ea5afe12e8)

**LAUNCH INSTANCE**

# Thankyou

