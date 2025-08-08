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
  name = var.container_image
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.name

  ports {
    internal = 80
    external = var.container_port
  }
}
