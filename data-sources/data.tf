data "aws_ami" "joindevops" {
  owners = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}


output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data "aws_instance" "terraformm-1" {
    instance_id = "i-02e527c6839c952f9"
    ..........}

output "terraformm-1_info" {
    value = data.aws_instance.terraformm-1.public_ip


}