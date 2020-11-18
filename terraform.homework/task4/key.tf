resource "aws_key_pair" "task4-key" {
	key_name = "task4-key"
	public_key = "${file("~/.ssh/id_rsa.pub")}"
}