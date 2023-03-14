resource "local_file" "pet" {
    content = "s"
  filename = each.value
  for_each = var.filename

}

output "pets" {
    value = local_file.pet
    sensitive = true
  
}

resource "local_file" "name" {
    filename = each.value
    for_each = toset(var.users)
    sensitive_content = var.content

}