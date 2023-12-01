resource "aws_lb_target_group" "tg" {
  name        = "target-group"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.vpc-lh.id
  target_type = "ip"
}
