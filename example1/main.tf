#HCL (hashicorp conf lang)

provider "aws" {
  region = "us-east-2"
}

resource "aws_key_pair" "us-east-2-bastion-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDdVOcPsoxn8kyKKGyGbw+XUz/pwu05oGSB6Vml/vr06cs8TE/eVCFope6AsjYTfuVuyt0yr82U+dKZ9mw/hWappskUUZ0one/sKNR6TYxVtvv/9ShMXYM6Paz8iyHcCosv9vmh2jz34uvbLuUWoPnyS5Bfeg6YkZU+vD7OK0x7zp45exipqrYdxe4O8Z4iqDf8VBm6M7zBV6W60Aaf8NLe6wRueHYtVXwWarBNf+ygjMVYcLJUXHKgs5G/C5eyYSDaq7n4s6S1PqAUYdm5Yd5ntHGoZpkHoecrEFAu95CeW6O4XboNOQCmg+yp5fwW3EEf3jXVXh0bPUSkm7eaSPF ec2-user@bastion"
}
