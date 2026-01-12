variable "filename" {
type = string
default = "abc.txt"
}

variable "content" {
type = string
default = "content"
}

resource "local_file" "f1" {
filename = var.filename
content = var.content
}

output "filename" {
value = local_file.f1
}
