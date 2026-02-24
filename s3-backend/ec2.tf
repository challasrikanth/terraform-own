resource "aws_instance" "example" {
#  count = 2 
  ami= "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "frontend"
#    Name = "frontend-${count.index}"
# if you define as above ,     here  count.index iterate based on count value it creates name of the instances as frontend-o and frontend-1 
  }
}


resource "aws_security_group" "allow_all" {
    name= "allow_all"
    description = "allow_allports"

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
        cidr_blocks = [ "0.0.0.0/0" ]
    }
  
}
