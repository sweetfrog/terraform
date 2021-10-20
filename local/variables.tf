/*
variable "filename" {
default = [
  "/home/vagrant/pets.txt",
  "/home/vagrant/dogs.txt",
  "/home/vagrant/cats.txt"
  ]
}
*/

variable "filename" {
  type=set(string)
  default = [
    "/home/vagrant/pets.txt",
    "/home/vagrant/dogs.txt",
    "/home/vagrant/cats.txt"
    ]
}
