# VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# Subnet
resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.main.id       #This associates the subnet with the VPC created earlier (main).
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-2a"
}

# Security Group
resource "aws_security_group" "allow_http" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 80        #This allows HTTP traffic on port 80
    to_port     = 80
    protocol    = "tcp"     #Specifies that the rule applies to TCP traffic
    cidr_blocks = ["0.0.0.0/0"]     #Allows traffic from any IP address
  }

  egress {
    from_port   = 0     #This allows all outbound traffic to any port
    to_port     = 0
    protocol    = "-1"      #-1 indicates that this rule applies to all protocols.
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#Summary: This setup is a basic starting point for creating a network infrastructure in AWS. You can extend this by adding more subnets, routing tables, additional security groups, or even launching EC2 instances within this VPC
