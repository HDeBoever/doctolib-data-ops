# Q4 : Install docker and docker-compose on the EC2 instance on start-up of the machine 
provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "doctolib-q4"
  ports {
    internal = 80
    external = 8000
  }
}
