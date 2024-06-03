resource "aws_ec2_transit_gateway" "this" {
  description = var.description
  tags = {
    Name = var.nat_gateway_name
 }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "cat_dev_tgw_attach_mission" {
  subnet_ids         = [var.subnet_id1]
  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = var.vpc_id1

}

resource "aws_ec2_transit_gateway_vpc_attachment" "cat_dev_tgw_attach_transit" {
  subnet_ids         = var.subnet_id2
  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = var.vpc_id2

}