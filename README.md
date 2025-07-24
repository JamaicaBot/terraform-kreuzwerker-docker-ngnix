# terraform-docker-nginx

Ein einfaches Terraform-Modul, das mit dem kreuzwerker/docker Provider einen NGINX-Container startet.

## Verwendung
```hcl
module "nginx" {
  source         = "github.com/jamaicabot/terraform-docker-nginx"
  container_name = "meine-nginx"
  host_port      = 8080
  nginx_image    = "nginx:alpine"
}
