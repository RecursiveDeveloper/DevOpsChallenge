resource "aws_ecs_cluster" "cluster_challenge" {
    name = "cluster_challenge"

    setting {
        name  = "containerInsights"
        value = "disabled"
    }
}

resource "aws_ecs_cluster_capacity_providers" "capacity_providers_challenge" {
  cluster_name = aws_ecs_cluster.cluster_challenge.name

  capacity_providers = ["FARGATE_SPOT"]

  default_capacity_provider_strategy {
    base              = 1
    weight            = 100
    capacity_provider = "FARGATE_SPOT"
  }
}
