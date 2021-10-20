output "image_out" {
value = docker_container.mycontainer.ip_address
description = "the IP for the container"
}
