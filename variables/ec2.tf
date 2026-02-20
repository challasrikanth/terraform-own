
resource "aws_instance" "var1" {

    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    tags = var.ec2_tags
}


resource "aws_security_group" "allow_all" {

    name = var.sg_name
    description = var.sg_description

    egress {
        from_port = var.sg_from_port
        to_port = var.sg_to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }

    ingress {
        from_port = var.sg_from_port
        to_port = var.sg_to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }
    
    tags = var.sg_tags
}