resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.enviroment == "dev" ? "t3.micro" : "t3.medium"
    # codition except enviroment is dev then t3.micro else remaing all  t3.medium
    #terraform codition very easy rule true ? value_if_true : value_if_false
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = "terraformm-1"
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allow-all"
  }

}
