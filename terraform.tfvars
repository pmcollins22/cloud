aws_region         = "us-east-1"
vpc1_name          = "cat_dev_mission_vpc"
vpc1_cidr_block    = "10.12.0.0/16"
vpc1_subnets       = ["10.12.128.0/20", "10.12.144.0/20"]
vpc2_name          = "cat_dev_transit_vpc"
vpc2_cidr_block    = "10.11.0.0/16"
vpc2_subnets       = ["10.11.128.0/20", "10.11.144.0/20"]
vpc2_public_subnet = "10.11.0.0/20"
internet_gateway_name = "cat_dev_transit_igw"
nat_gateway_name = "cat_dev_transit_central_ngw"
transit_gateway_name = "cat_dev_vpc_tgw"