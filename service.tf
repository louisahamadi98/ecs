resource "aws_ecs_service" "ecs_service" {
  name            = "ecs-srv-lh"
  cluster         = aws_ecs_cluster.cluster_ecs_lh.id
  task_definition = aws_ecs_task_definition.ecs_task.arn
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = [aws_subnet.subnet1-lh.id, aws_subnet.subnet2-lh.id, aws_subnet.subnet3-lh.id]
    security_groups = [aws_security_group.ecs_sg.id]
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.tg.arn
    container_name   = "louisa"
    container_port   = 80
  }

  desired_count = 1
}
