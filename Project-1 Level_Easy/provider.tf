# Configure terraform provider
#Purpose: This block specifies the Terraform settings and required providers for the configuration.
terraform {
    required_providers {        #Specifies the provider(s) that this configuration depends on.
        aws = {     #Defines the AWS provider that Terraform will use.
            source = "hashicorp/aws"        #Points to the official HashiCorp AWS provider.
            version = "~> 5.0"      #Specifies the version of the provider. ~> 5.0 means it will use any version of the AWS provider starting from 5.0 up to, but not including, 6.0.
        }
    }
#In Terraform, a backend is responsible for how Terraform stores and accesses state data. The state file contains information about the infrastructure managed by Terraform
    backend "s3" {      #Specifies that the backend for Terraform state storage is Amazon S3. This means Terraform will store the state file in the specified S3 bucket.
        bucket = "terraformstorage-17082024"        #The name of the S3 bucket where Terraform will store the state file. 
        key = "backend"     #The path within the S3 bucket where the state file will be stored. This path can be considered as a folder structure within the bucket. For example, "backend" could be a folder within the bucket where the state file will be stored. You might want to use a more descriptive path if you manage multiple environments or projects (e.g., "terraform/state/production.tfstate").
        region = "us-east-2"        #The AWS region where your S3 bucket is located.
      
    }
}


#Configure AWS provider
#Purpose: This block configures the AWS provider with specific settings.
provider "aws" {        #This block tells Terraform to use the AWS provider.
    region = "us-east-2"        #Specifies the AWS region where resources will be created.
}