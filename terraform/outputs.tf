output "cluster_name" {
  value       = aws_ecs_cluster.demo_cluster.name
  description = "The name of the ECS cluster"
}

output "service_name" {
  value       = aws_ecs_service.demo_service.name
  description = "The name of the ECS service"
}

output "instruction" {
  value       = "To access your application, navigate to the ECS Console -> Clusters -> Tasks -> click on your running task, and find the 'Public IP'. Access it via http://<Public_IP>:5000"
  description = "Instructions to access the app"
}
