resource "aws_ecs_task_definition" "ecs_task" {
  family                   = "mon-application"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = data.aws_iam_role.ecs-default-role.arn
  task_role_arn            = data.aws_iam_role.ecs-default-role.arn

  container_definitions = jsonencode([
    {
      name  = "louisa",
      image = "public.ecr.aws/g7l4n5q7/lhamadi:1.0",
      portMappings = [
        {
          containerPort = 80,
          hostPort      = 80
        }
      ]
      readonlyRootFilesystem = false
    }
  ])

  runtime_platform {
    operating_system_family = "LINUX"
    cpu_architecture        = "ARM64"
  }
}
