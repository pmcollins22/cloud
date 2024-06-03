variable "description" {
    description = "Description of the Transit Gateway"
    type = string
  
}

variable "vpc_id1" {
    description = "The ID of the first VPC to attach"
    type = string
  
}

variable "subnet_id1" {
    description = "The ID of the subnet for the first VPC attachment"
    type = string
  
}

variable "vpc_id2" {
    description = "The ID of the second VPC to attach"
    type = string
  
}

variable "subnet_id2" {
    description = "The ID of the subnet for the second VPC attachment"
    type = list(string)
  
}

variable "nat_gateway_name" {
    description = "The Name of the Transit Gateway"
    type = string
  
}