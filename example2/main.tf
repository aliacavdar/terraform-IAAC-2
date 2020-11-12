provider "aws" {
  region = "us-east-2"
}

resource "aws_key_pair" "us-east-2-bastion-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJkrLfPVCjYOsRye0Gm0sMnBfrrgObg3mqzMhjZYD6bqpU/AWo4qsw82SnuNrXguKSaifEqN16zEf9K6VoDJaLeXQEfpOVSbfxCuLycjajcfjwJXtgCYBOS6r+9VZn3LS3Z5F5RVfGMISAatbQbtRNrzf7rCk0eckYQDejuWn28jQc6QE8Vp/2qgoC31St/gGQhn/BiFa75C2gvmgl17cDRU+cJxie9CG52v47L+hT+2Y0t8PjMySML2HQQ1MNitPiUr3xptPfF6RU6Dt0NthLpSP9ZU3TGSN4QtkD1hi3gelZWQ/2jyb2gKZb7hJVgLdN21RX3iA9THO7zJiuo31j ec2-user@bastion"
}

resource "aws_instance" "exmaple" {
  key_name      = "bastion-key"
  ami           = "ami-03657b56516ab7912"
  instance_type = "t2.micro"
}
