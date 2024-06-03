output "transit_gateway_id" {
    description = "The ID of the Transit Gateway"
    value = aws_ec2_transit_gateway.this.id
  
}

output "attachment1_id" {
    description = "The ID of the first TGW attachment"
    value = aws_transit_gateway_vpc_attachment.attachment1.id
  
}

output "attachment2_id" {
    description = "The ID of the second TGW attachment"
    value = aws_transit_gateway_vpc_attachment.attachment2.id
  
}