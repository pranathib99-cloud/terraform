variable "ami_id" {
<<<<<<< HEAD
    type = string  # its read as string for anyone using this code easy to idefntify another data types are number, bool, list, map, set etc.
=======
    type = string
>>>>>>> 175ac023d8ac1943e05d5e6fba4400f0e039de88
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"    
}

variable "ec2_tags" {
    type = map
    default = {
        Environment = "dev"
        Project     = "terraform-demo"
    }
}

variable "sg_name" {
    type = string
    default = "allow-all"
    # Description = "Security group name" optional fiels
}

variable "ingress_from_port" {
    type = number
    default = 0
}

variable "ingress_to_port" {
    type = number
    default = 0
}

variable "egress_from_port" {
    type = number
    default = 0
}

variable "egress_to_port" {
    type = number
    default = 0
  
}

variable "protocol" {
    type = string
    default = "-1"
}

