# Creating your first Terraform resource
- [INSTALL TERRAFORM](https://github.com/aishwaryaa-glitch/Learning-Terraform/blob/main/README.md) (if not already installed)

- **Create a Project Directory**
```
mkdir my-first-terraform-project
cd my-first-terraform-project
```

- **Create a main.tf File**
```
vi main.tf
```

- **Define the AWS Provider and EC2 Instance**
```
# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"  # You can change the region as needed
}

# Create an EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstInstance"
  }
}
```

- **Initialize Terraform**
```
terraform init
```

- **Generate an Execution Plan**
```
terraform plan
```

- **Apply the Configuration**
```
terraform apply
```

- **Verify the Resource**

Once the apply process completes, you can log in to your AWS Management Console and verify that the EC2 instance has been created.

- **Clean Up**
```
terraform destroy
```

Terraform will prompt you to confirm the destruction. Type yes to remove all the resources defined in your configuration.


# SUMMARY

With this basic configuration, you've used Terraform to define and provision an AWS EC2 instance. Terraform's declarative approach allows you to manage infrastructure as code, making it easier to version, share, and automate your infrastructure deployments. You can expand on this by adding more resources, modules, or variables as needed.

**Check out below video links for better understanding**

# [TERRAFORM?](https://youtu.be/IyfdN5_fB1I?si=06hy1ruhfsjK8HTK)
