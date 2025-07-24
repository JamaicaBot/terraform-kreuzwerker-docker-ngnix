terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  # Für lokalen Docker Daemon reichen die Defaults
  # Für Remote-Docker-Host hier ggf. Konfiguration ergänzen
}

resource "docker_image" "nginx" {
  name = var.nginx_image
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx

  ports {
    internal = 80
    external = var.nginx_port
  }
}
