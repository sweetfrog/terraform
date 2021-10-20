provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "myimg" {
name = var.image_name_map[var.key]
}
