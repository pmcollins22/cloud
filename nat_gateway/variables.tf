variable "subnet_id" {
  description = "The ID of the subnet in which the NAT gatewway will be created"
  type = string

}

variable "name" {
  description = "Name for the EIP and NAT gateway"
  type = string
  
}