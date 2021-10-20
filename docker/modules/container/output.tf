output "ip_address" {
value = docker_container.mycontainer.ip_address
description = "the IP for the container"
}
