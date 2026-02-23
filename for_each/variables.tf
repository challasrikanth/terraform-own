variable "instances" {
 type = map
  default = {
    mongodb= "t3.micro"
    mysql="t3.small"
    shipping="t3.small"
  }
}


variable  "zone_id" { 
  type = string
  default = "Z09279692055UBYT8TIQD"
}

variable "domain_name" {
  type = string
  default = "srikanthchalla.online"
}
