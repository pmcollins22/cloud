output "vpc1_id" {
  description = "The ID of the first VPC"
  value       = module.vpc1.vpc_id
}

output "vpc1_subnets" {
  description = "The ID of the first VPC subnets"
  value = module.vpc1_subnets.subnet_id
}

output "vpc2_id" {
  description = "The ID of the second VPC"
  value       = module.vpc2.vpc_id
}

output "vpc2_subnets" {
  description = "The ID of the second VPC subnets"
  value = module.vpc2_subnets.subnet_id
}

output "internet_gateway_name" {
  description = "The ID of the Internet Gateway"
  value = module.internet_gateway.internet_gateway_id
    
}

output "s3_endpoint_name" {
description = "The ID of the s3 VPC endpoint"
value = module.s3_endpoint.s3_endpoint_id
  
}

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

