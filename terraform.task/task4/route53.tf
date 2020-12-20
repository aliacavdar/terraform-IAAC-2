 resource "aws_route53_record" "www" {
   zone_id = "Z0900607N81PS668I06D"
   name    = "www.cavdaralia.com"
   type    = "A"
   ttl     = "30"
   records = ["${aws_instance.web.public_ip}"]
}