output "s3_endpoint_id" {
    description = "ID of the s3 endpoint"
    value = aws_vpc_endpoint.s3.id
  
}