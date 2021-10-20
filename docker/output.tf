output "ip_address" {
value = docker_container.mycontainer.ip_address
description = "the IP for the container"
}

output "container_name" {
value = docker_container.mycontainer.name
description = "the IP for the container"
}

output "output_edwin" {
value = data.local_file.foo.content
}
