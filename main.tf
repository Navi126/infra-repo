resource "aws_launch_template" "mytemp" {
  tags = {
    Name = "tf-tmp"
  }
  name = "terraform-tmp"

  image_id               = "ami-0d4dbb113bd1c81b2"
  instance_type          = "t3.micro"
  key_name               = "Jenkins"
  vpc_security_group_ids = [aws_security_group.mysg.id]
}

