resource "aws_route53_record" "www" {
  count = 3
  zone_id = var.zone_id

  # here first it take instance name as mongodb and domain name as it crate as mongodb.srikanthchalla.online
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  # here it takes instances private ip one by one and get private ip address and assign record 

  records = [aws_instance.example[count.index].private_ip]
}