resource "aws_vpc_endpoint" "s3" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.aws_region}.s3"
  route_table_ids = [
    aws_route_table.cat_dev_vpc_mission-rtb-private[1].id
  ]
  tags = {
    Name = var.name
  }
}