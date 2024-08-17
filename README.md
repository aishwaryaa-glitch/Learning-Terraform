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

- Search for [**EC2**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html) in AWS console

![image](https://github.com/user-attachments/assets/c4f01374-a52e-402d-89c3-d99318166afe)

- Go to **INSTANCES** and **LAUNCH INSTANCE**

![image](https://github.com/user-attachments/assets/5b342aef-1740-431c-b0d6-518e18459098)

- Specify **NAME** and [**SELECT IMAGE TYPE**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html) "always try to use free tier image"

![image](https://github.com/user-attachments/assets/57fa40bd-dc60-4f41-8951-619bbde6a281)

- Select [**INSTANCE TYPE**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) and [**KEY PAIR**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)

![image](https://github.com/user-attachments/assets/fba65b44-5c70-4b41-aa64-aaf4d8088bdb)

****create a new key pair** if you dont have one

![image](https://github.com/user-attachments/assets/882d70e9-abec-4fa8-869a-0d4112326243)

- Create new [**SECURITY GROUP**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html) or selet **DEFAULT** one

![image](https://github.com/user-attachments/assets/255fada3-372e-453e-a314-66ea5afe12e8)

**LAUNCH INSTANCE**

# STEPS TO DOWNLOAD TERRAFORM IN YOUR LINUX EC2 MACHINE

[For Reference](https://phoenixnap.com/kb/how-to-install-terraform)

- Browse to the [DOWNLOAD TERRAFORM FOR LINUX](https://developer.hashicorp.com/terraform/install#linux) page.

- Right-click the Download button for your system's architecture and coply link address. In our case, it is **AMD64**.

![image](https://github.com/user-attachments/assets/55c7bb17-ed67-47ed-a7bb-0287bc220895)


- Use the wget tool and the link you previously copied to download the file
```
wget https://releases.hashicorp.com/terraform/1.9.4/terraform_1.9.4_linux_amd64.zip
```
- Unzip the file to the **usr** directory
```
sudo unzip terraform_1.9.2_linux_amd64.zip -d /usr/local/bin
```
- Verify the installation
```
terraform --version
```
******TO UPGRADE TERRAFORM CURRENT VERSION**

You could download the binary :
```
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
```
then :
```
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
```
then :
```
mv terraform /usr/local/bin/
```
make sure to change ${TERRAFORM_VERSION} by the version you want to install

exemple :

**0.13.2**

# STEPS TO INSTALL AND CONFIGURE AWS-CLI IN YOUR MACHINE

**INSTALL AWS-CLI**

- Download the AWS CLI Bundled Installer:
```
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
```
- Unzip the Downloaded File:
```
unzip awscli-bundle.zip
```
- Run the Installer:
```
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
```
- Verify the Installation:
```
aws --version
```

**Set Up AWS Credentials:**

Ensure that your EC2 instance has access to the necessary AWS credentials to interact with the AWS services. If your EC2 instance has an IAM role with the appropriate permissions, you don’t need to manually configure credentials. Otherwise, you can set up AWS credentials by running:
```
aws configure
```
You’ll be prompted to enter your [AWS Access Key ID](https://repost.aws/knowledge-center/create-access-key), [AWS Secret Access Key](https://aws.amazon.com/blogs/security/wheres-my-secret-access-key/), **Default region name** (e.g., ap-southeast-1), and **Default output format**.

# WHAT NEXT :/

Let's learn how to provision AWS resources one by one using TERRAFORM.

# THANKS :)
