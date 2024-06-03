variable "vpc_id" {
    description = "The ID of the VPC"
    type = string
  
}

variable "aws_region" {
    description = "AWS Region"
    type = string
  
}

variable "name" {
    description = "Name for the S3 endpoint"
    type = string
  
}

variable "route_table_ids" {
    description = "List of Route Table Ids"
    type = list(string)
  
}