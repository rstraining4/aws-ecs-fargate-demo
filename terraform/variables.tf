variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "ECS Cluster Name"
  default     = "ecs-demo-cluster"
}

variable "service_name" {
  description = "ECS Service Name"
  default     = "ecs-demo-service"
}

variable "task_definition_name" {
  description = "ECS Task Definition Name"
  default     = "ecs-demo-task"
}

variable "desired_count" {
  description = "Number of ECS tasks"
  default     = 1
}

variable "container_image" {
  description = "Docker image for the ECS task"
  default     = "your-docker-image:latest"
}