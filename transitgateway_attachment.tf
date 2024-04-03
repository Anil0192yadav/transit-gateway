resource "aws_ec2_transit_gateway_vpc_attachment" "vpc-attachment-dev" {
  subnet_ids        = var.dev_private_subnet
  transit_gateway_id = aws_ec2_transit_gateway.Connector.id
  vpc_id             = var.vpc_id-dev
  dns_support = "enable"
  ipv6_support = "disable"
  appliance_mode_support = "disable"

    tags = merge(var.resource_tags, { Name = "vpc-attachment-dev" })

}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc-attachment-qa" {
  subnet_ids        = var.qa_private_subnet
  transit_gateway_id = aws_ec2_transit_gateway.Connector.id
  vpc_id             = var.vpc_id-qa
  dns_support = "enable"
  ipv6_support = "disable"
  appliance_mode_support = "disable"

      tags = merge(var.resource_tags, { Name = "vpc-attachment-qa" })

}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc-attachment-uat" {
  subnet_ids        = var.uat_private_subnet
  transit_gateway_id = aws_ec2_transit_gateway.Connector.id
  vpc_id             = var.vpc_id-uat
  dns_support = "enable"
  ipv6_support = "disable"
  appliance_mode_support = "disable"

      tags = merge(var.resource_tags, { Name = "vpc-attachment-uat" })

}