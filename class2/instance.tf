resource "aws_instance" "web" {
  ami                         = "ami-03657b56516ab7912"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "${aws_key_pair.class.key_name}"
  user_data                   = "${file("userdata_file.sh")}"
  vpc_security_group_ids      = ["${aws_security_group.class2.id}"]
  availability_zone           = "us-east-2a"
}

resource "aws_instance" "web2" {
  ami           = "ami-03657b56516ab7912"
  instance_type = "t2.micro"
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-2a"
  size              = 100
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.web.id}"
}
