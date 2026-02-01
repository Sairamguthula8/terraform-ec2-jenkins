resource "aws_instance" "demo_ec2" {
  ami           = "ami-0b6c6ebed2801a5cb" # Amazon Linux 2 (Mumbai)
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "EC2-From-Jenkins-Terraform"
  }
}

outputs.tf
output "public_ip" {
  value = aws_instance.demo_ec2.public_ip
}