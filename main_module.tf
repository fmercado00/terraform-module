data "aws_ami" "cloud_cobus" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

module "my_rule_instance" {
  source = "./testRule_module"

  number_of_instances = var.number_of_instances
  ec2_ami_id = data.aws_ami.cloud_cobus.id
}

