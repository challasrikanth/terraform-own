resource "aws_instance" "example" {
    for_each = var.instances
    ami= "ami-0220d79f3f480ecf5"
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_tls1.id]
  
}


resource "aws_security_group" "allow_tls1" {
  name= "allow-all-terraform1"
  description = "Allow TLS inbound traffic and all outbound traffic"
  
  egress {

    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {

    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]

   }
   

    tags = {
    Name = "allow-all-terraform"
  }

}
