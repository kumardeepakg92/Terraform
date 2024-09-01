#EC2 Instance Resource

resource "aws_instance" "My-EC2-VM" {
  for_each = {
    "Dev"="MY-DEV"
    "Prod"="MY-PROD"
  }
  ami               = "ami-047a51fa27710816e"
  instance_type     = "t2.micro"
  tags = {
    #"Name" = "Web"
    "Name" = each.value
    "Environment"=each.value
  }
}

resource "aws_iam_user" "MY-USER" {
  for_each = toset(["Deepak", "Amit", "Abhinav", "Simran", "Arif"])
  name = each.value
}