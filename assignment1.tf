provider "aws" {
  region = "us-west-2"
  aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
  aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
}

resource "aws_ecs_cluster" "example" {
  name = "example-cluster"
}

resource "aws_ecs_task_definition" "example" {
  family                   = "example-task"
  container_definitions    = jsonencode([{
    name         = "example-container"
    image        = "akki1799/assignment1:image8"
    memory       = 128
    portMappings = [{
      containerPort = 3000
      hostPort      = 3000
    }]
  }])
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  network_mode             = "awsvpc"
}