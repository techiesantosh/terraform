resource "local_file" "pet" {

  filename        = var.filename
  content         = "My fav pet is ${random_pet.my-pet.id}"
  file_permission = "0700"

  lifecycle {
    create_before_destroy = true
  }
}

resource "random_pet" "my-pet" {
  prefix    = "Mrs"
  separator = "."
  length    = "1"
}
