/*
resource "local_file" "games" {
 content     = "i love you"
 filename = "${path.module}/foo.bar"
}

resource "local_file" "edwin" {
 content     = "i love you"
 filename = "/home/vagrant/edwin.txt"
}

resource "random_pet" "my-pet" {
              prefix = "Mrs"
              separator = "."
              length = "1"
}

resource "local_file" "foo" {
    content     = "my favorite pet is ${random_pet.my-pet.id}"
    filename = "${path.module}/${random_pet.my-pet.id}.txt"
}


output "pet-name" {
    value     = random_pet.my-pet.id
    description = "records teh value of the pet id"
}


resource "local_file" "pet" {
    content     = "i love you!"
    filename = var.filename[count.index] #here as the count increases so will the index number
    count = length(var.filename) #here count is equal to the number of items listed in teh variable filename
}
*/

resource "local_file" "pet" {
    for_each = var.filename
    filename = each.value
    content = "i love you!"
}
