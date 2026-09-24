resource "aws_autoscaling_group" "myasg" {
  name               = "tf-asg"
  min_size           = 2
  max_size           = 3
  desired_capacity   = 2
  health_check_type  = "EC2"
  load_balancers     = [aws_elb.mylb.id]
  availability_zones = ["us-east-2a", "us-east-2b"]
  launch_template {
    id      = aws_launch_template.mytemp.id
    version = "$Latest"
  }
}
