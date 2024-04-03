# ############### DEV ROUTABLE################
# ####### ADDING AN QA AND UAT RANGES IN DEV ROUTABLE WITH TRANSIT GATEWAY#############
resource "aws_route" "public-RT-dev" {
  depends_on = [ 
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-dev,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-qa,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-uat,
    aws_ec2_transit_gateway.Connector ]
  route_table_id         = "rtb-0b1c89fd7b9f5e156" # Replace with your route table ID
  for_each = toset(var.dev)
  destination_cidr_block = each.value
  transit_gateway_id     = aws_ec2_transit_gateway.Connector.id
}

resource "aws_route" "private-RT-dev" {
  depends_on = [ 
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-dev,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-qa,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-uat,
    aws_ec2_transit_gateway.Connector ]
  route_table_id         = "rtb-006778df641acfc36" # Replace with your route table ID
  for_each = toset(var.dev)
  destination_cidr_block = each.value
  transit_gateway_id     = aws_ec2_transit_gateway.Connector.id
}


# ############### QA ROUTABLE################
# ####### ADDING AN DEV AND UAT RANGES IN QA ROUTABLE WITH TRANSIT GATEWAY#############
resource "aws_route" "public-RT-qa" {
  depends_on = [ 
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-dev,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-qa,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-uat,
    aws_ec2_transit_gateway.Connector ]
  route_table_id         = "rtb-056ecdebf6f71073e" # Replace with your route table ID
  for_each = toset(var.qa)
  destination_cidr_block = each.value
  transit_gateway_id     = aws_ec2_transit_gateway.Connector.id
}

resource "aws_route" "private-RT-qa" {
  depends_on = [ 
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-dev,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-qa,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-uat,
    aws_ec2_transit_gateway.Connector ]
  route_table_id         = "rtb-04954e799b30d8a8f" # Replace with your route table ID
  for_each = toset(var.qa)
  destination_cidr_block = each.value
  transit_gateway_id     = aws_ec2_transit_gateway.Connector.id
}

# ############### UAT ROUTABLE################
# ####### ADDING AN QA AND DEV RANGES IN UAT ROUTABLE WITH TRANSIT GATEWAY#############
resource "aws_route" "public-RT-uat" {
  depends_on = [ 
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-dev,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-qa,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-uat,
    aws_ec2_transit_gateway.Connector ]
  route_table_id         = "rtb-0e9b6ea8f1d66515f" # Replace with your route table ID
  for_each = toset(var.uat)
  destination_cidr_block = each.value
  transit_gateway_id     = aws_ec2_transit_gateway.Connector.id
}

resource "aws_route" "private-RT-uat" {
  depends_on = [ 
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-dev,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-qa,
    aws_ec2_transit_gateway_vpc_attachment.vpc-attachment-uat,
    aws_ec2_transit_gateway.Connector ]
  route_table_id         = "rtb-0505056abd66a6e71" # Replace with your route table ID
  for_each = toset(var.uat)
  destination_cidr_block = each.value
  transit_gateway_id     = aws_ec2_transit_gateway.Connector.id
}
