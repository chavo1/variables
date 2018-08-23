# I used null_provider with hardcoded values
resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo hello word"
  }
}

# I used instance_count variable to create multiple resources with null_provider
resource "null_resource" "helloMultiple" {
  count = "${var.instance_count}"
  provisioner "local-exec" {
    command = "echo hello word ${count.index}"
  }
}
