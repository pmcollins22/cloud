output "nat_gateway_id" {
    description = "The ID of the NAT gateway"
    value = module.nat_gateway.nat_gateway_id
  
}

output "nat_gateway_public_ip" {
    description = "The public ip of the NAT gateway"
    value = module.nat_gateway.nat_gateway_public_ip
  
}

output "nat_gateway_allocation_id" {
    description = "The Allocation ID of the Elastic IP associated with the NAT gateway"
    value = module.nat_gateway.nat_gateway_allocation_id
  
}