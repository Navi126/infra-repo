resource "aws_elb" "mylb" {
  tags = {
    Name = "tf-lb"
  }
  name            = "my-lb"
  subnets         = ["subnet-099ff239473dd102b", "subnet-0c722bbb9e7a281db"]
  security_groups = [aws_security_group.mysg.id]
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 8080
    lb_protocol       = "http"
  }
}
