/*
# ======= using lists. ========== #
*/
variable "image_name_list" {
type = list
default = ["nginx:latest","httpd:latest"]
}

variable "imgindex" {
default = 0
}

/*
# ======= using maps. ========== #
*/
variable "image_name_map" {
  type = map
  default = {
    "test"  = "nginx:latest"
    "prod" = "http:latest"
  }
}

variable "key" {
default = "test"
}
