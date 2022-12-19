locals {
    ec2_instance_names = toset(["testRule", "testRuleHisotry"])
    ec2_instance_type = "t2.micro"
}
resource "aws_instance" "sample" {
  ami           = var.ec2_ami_id
  instance_type = local.ec2_instance_type

  for_each = local.ec2_instance_names
  
  tags = {
    Name = "Server${each.value}Sufix" 
  }
}
  