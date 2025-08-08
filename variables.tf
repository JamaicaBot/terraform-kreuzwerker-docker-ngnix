variable "container_image" {
  description = "Das Docker Image für NGINX"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Name des NGINX Containers"
  type        = string
  default     = "nginx"
}

variable "container_port" {
  description = "Port auf dem Host, auf den NGINX gemappt wird"
  type        = number
  default     = 8080
}
