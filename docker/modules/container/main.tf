provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "mycontainer" {
  name  = "testing"
  image = docker_image.myimg.latest
  ports {
    internal = var.intport
    external = var.extport
  }
}
