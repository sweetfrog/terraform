terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
    google = {
      source = "hashicorp/google"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  required_version = ">= 0.13"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}
/*
# Find the latest Ubuntu precise image.
resource "docker_image" "nginximg" {
  name = "nginx:stable"
}
*/

/*
resource "docker_image" "myimg" {
name = var.image_name_list[var.imgindex]
}
*/

resource "docker_image" "myimg" {
name = var.image_name_map[var.key]
}

resource "docker_container" "mycontainer" {
  name  = "testing"
  image = docker_image.myimg.latest
  ports {
    internal = var.intport
    external = var.extport
  }
}

/*
resource "local_file" "edwin" {
    content     = "i love you!"
    filename = "${path.module}/edwin.txt"
}
*/

module "image" {
  source = "./modules/image"
  image_name_map = var.image_name_map[var.key]

}

module "container" {
  source = "./modules/container"
  container_name =
  image = module.image.image_out
  int_port =
  ext_port =

}
