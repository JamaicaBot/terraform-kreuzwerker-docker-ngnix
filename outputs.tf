output "container_id" {
  description = "Die ID des NGINX Containers"
  value       = docker_container.nginx.id
}

output "container_url" {
  description = "Die URL, unter der NGINX erreichbar ist"
  value       = "http://localhost:${var.container_port}"
}