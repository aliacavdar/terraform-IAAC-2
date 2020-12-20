resource "aws_instance" "web" {
    ami                         = "${data.aws_ami.ubuntu.id}"
    instance_type               = "t2.micro"
    associate_public_ip_address = "true"
    key_name                    = "${aws_key_pair.task4-key.key_name}"
    user_data                   = "${file("userdata_file.sh")}"
    vpc_security_group_ids      = ["${aws_security_group.task4.id}"]
    availability_zone = "us-east-2a"

    tags = {
       Name = "Dev"
    }
}
