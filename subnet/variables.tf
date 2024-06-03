variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnets" {
  description = "A list of CIDR blocks for the VPC subnets"
  type        = list(string)
}

variable "public_subnet" {
  description = "The CIDR block for the public subnet"
  type        = string
  default = null
}
