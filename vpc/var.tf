variable "key_pair" {
  type        = string
  description = "provide the key name"
}

variable "security_group" {
  type        = string
  description = "provide the security group name"
}

variable "port_number" {
  type        = list(any)
  description = "provide the port number"
}

variable "instance_type" {
  type        = string
  description = "provide the instance type"
}

variable "ami_id" {
  type        = string
  description = "provide the ami id"
}

variable "access_key_name" {
  type        = string
  description = "provide the access key name"
}

variable "secret_key_name" {
  type        = string
  description = "provide the secret key name"
}

variable "region_name" {
  type        = string
  description = "provide the region name"
}






