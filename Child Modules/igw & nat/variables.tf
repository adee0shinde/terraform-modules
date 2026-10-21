variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "public_subnet_1" {
  type        = string
  description = "First public subnet ID"
}

variable "public_subnet_2" {
  type        = string
  description = "Second public subnet ID"
}

variable "private_subnet_1" {
  type        = string
  description = "First private subnet ID"
}

variable "private_subnet_2" {
  type        = string
  description = "Second private subnet ID"
}
