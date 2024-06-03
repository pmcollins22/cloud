variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "vpc1_name" {
  description = "The name of the first VPC"
  type        = string
}

variable "vpc1_cidr_block" {
  description = "The CIDR block for the first VPC"
  type        = string
}

variable "vpc1_subnets" {
  description = "A list of CIDR blocks for the first VPC subnets"
  type        = list(string)
}

variable "vpc2_name" {
  description = "The name of the second VPC"
  type        = string
}

variable "vpc2_cidr_block" {
  description = "The CIDR block for the second VPC"
  type        = string
}

variable "vpc2_subnets" {
  description = "A list of CIDR blocks for the second VPC subnets"
  type        = list(string)
}

variable "vpc2_public_subnet" {
  description = "The CIDR block for the public subnet in the second VPC"
  type        = string
}

variable "internet_gateway_name" {
  description = "Name of internet_gateway"
  type = string
  
}

variable "s3_endpoint_name" {
  description = "Name for the s3 endpoint"
  type = string
  
}

variable "transit_gateway_description" {
  description = "Desription of the Transit Gateway"
  type = string
  
}

variable "tranist_gateway_tags" {
  description = "Tags for the Transit Gateway and attachments"
  type = map(string)
  
}

variable "description" {
    description = "Description of the Transit Gateway"
    type = string
  
}

variable "tags" {
    description = "Tags for the Transit Gateway and attachments"
    type = map(string)
  
}
variable "nat_gateway_name" {
  description = "Name for the NAT Gateway"
  type = string
  
}

variable "transit_gateway_name" {
  description = "Name of the Transit Gateway"
  type = string
  
}
