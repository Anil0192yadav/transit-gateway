resource "aws_ec2_transit_gateway" "Connector" {
  description = "Connecting Multiple VPC in account"
  default_route_table_propagation = "enable"
  default_route_table_association = "enable"
  dns_support = "enable"
  vpn_ecmp_support = "enable"
  multicast_support = "disable"
  auto_accept_shared_attachments = "disable" 
   tags = {
    Name = "VPC_Connector"
  }
}


