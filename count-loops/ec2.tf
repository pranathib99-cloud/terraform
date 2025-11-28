resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    #count = 4   # loop for 4 instances requed 
    count = length(var.instances)  # loop for number of instances in the list
    instance_type = "t3.m icro"
                 = [aws_security_group.allow_all.id]
    tags = {
        Name = var.instances[count.index]
        Terraform = "true"
        \
        \\\\
        project = "roboshop"
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