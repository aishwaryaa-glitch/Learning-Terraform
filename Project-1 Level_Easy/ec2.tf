resource "aws_instance" "web" {
  ami             = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.subnet.id
  security_groups = [aws_security_group.allow_http.id]
  associate_public_ip_address = true  # Ensures a public IP is assigned

  user_data = <<-EOF
              #!/bin/bash
              echo "<h1>Deployed via Terraform!</h1>" > /var/www/html/index.html
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              EOF

  tags = {      ##Tags: Tags are key-value pairs used to identify and categorize AWS resources.
    Name = "TerraformWebServer"         ##Name = "TerraformWebServer": This assigns the name "TerraformWebServer" to the EC2 instance, making it easier to identify in the AWS Management Console.
  }
}
