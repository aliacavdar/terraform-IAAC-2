resource "aws_instance" "example" {
  ami           = "ami-03657b56516ab7912"
  instance_type = "t2.micro"

  tags = {
    Name = "example"
  }

  # List
  security_groups = ["${ aws_security_group.test.name }"]
}
