terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {}

module "vpc1" {
  source = "./modules/vpc"
  vpc_name   = var.vpc1_name
  cidr_block = var.vpc1_cidr_block
}

module "vpc1_subnets" {
  source   = "./modules/subnet"
  vpc_id   = module.vpc1.vpc_id
  subnets  = var.vpc1_subnets
  vpc_name = var.vpc1_name
}

module "vpc2" {
  source = "./modules/vpc"
  vpc_name   = var.vpc2_name
  cidr_block = var.vpc2_cidr_block
}

module "vpc2_subnets" {
  source        = "./modules/subnet"
  vpc_id        = module.vpc2.vpc_id
  subnets       = var.vpc2_subnets
  public_subnet = var.vpc2_public_subnet
  vpc_name      = var.vpc2_name
}

module "route_table" {
  source = "./modules/route_table"
  
}

module "internet_gateway" {
  source = "./modules/internet_gateway" 
  vpc_id = module.vpc2.vpc.id
  name = var.internet_gateway_name 
}

module "transit_gateway" {
  source = "./modules/transit_gateway" 
  vpc_id1 = module.vpc1.vpc_id
  subnet_id1 = [var.vpc1_subnets[0]]
  vpc_id2 = module.vpc2.vpc_id
  subnet_id2 = var.vpc2_subnets
  transit_gateway_name = var.transit_gateway_name 
}

module "nat_gateway" {
  source = "./modules/nat_gateway" 
  subnet_id = var.vpc2_public_subnet 
  nat_gateway_name = var.nat_gateway_name

}

module "s3_endpoint" {
  source = "./modules/s3_endpoint"
  vpc_id = module.vp1.vpc.id
  region = var.aws_region
  name = var.s3_endpoint_name

}