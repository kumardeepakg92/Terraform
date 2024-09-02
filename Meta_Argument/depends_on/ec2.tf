# Create EC2 Instance
resource "aws_instance" "MY-EC2-VM" {
  ami = "ami-0be2609ba883822ec" # Amazon Linux
  instance_type = "t2.micro"
  subnet_id = aws_subnet.DEV-VPC-Public-Subnet-1.id
  key_name = "terraform-key"
	#user_data = file("apache-install.sh")
  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF  
  vpc_security_group_ids = [ aws_security_group.DEV-VPC-SG.id ]
}