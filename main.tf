terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}



module "docker-ngnix" {
  source  = "JamaicaBot/docker-ngnix/kreuzwerker"
  version = "2.0.0"
}
