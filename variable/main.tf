variable "username" {
  type        = string
  description = "provide the username"
  default     = "nik"

}

variable "age" {
  type        = number
  description = "provide the age"
  default     = "22"

}



output "user_name" {
  value = "my name is ${var.username}"
}

output "user_age" {
  value = "mention the provide age is ${var.age}"
}

