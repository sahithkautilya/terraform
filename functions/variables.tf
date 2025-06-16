variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "The ami id of RHEL 9 DevOps Image."
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  default = {
    Name    = "roboshop"
    purpose = "Variables-demo"
  }
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  default = "allowing all ports from internet"
}

variable "from_port" {
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow_all"
  }
}

variable "environment" {
  default = "dev"
}

variable "instances" {
  default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "zone_id" {
  default = "Z084342614HZ3PPHY6P0Z"
}

variable "domain_name" {
  default = "sahithkautilya.site"
}

variable "common_tags" {
  default = {
    project = "roboshop"
    Terraform = "true"
  }
}