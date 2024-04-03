resource_tags =  { 
    "env"        = "dev"
    "project"    = "Developement"
    "Iaac"       = "Terraform"
  }  

transit_gateway_name = "connector"
vpc_id-uat = "vpc-03d2b13e3e8e0c913"  # replace with uat VPC ID
vpc_id-dev = "vpc-05a9a569fa82c6841" # replace with dev VPC ID
vpc_id-qa = "vpc-09b511ec73c1c8c7a"  # replace with qa VPC ID
dev_private_subnet = [ "subnet-074f862d8bc8c8e65","subnet-01e1ae2c048d71be2","subnet-0bf7ce503733753a2" ]  # Replace with dev private subnets
dev = ["172.16.0.0/16" , "192.168.0.0/16"] # replace with QA & UAT VPC RANGE
qa = [ "172.16.0.0/16" ,"10.0.0.0/16" ]  # replace with dev & UAT VPC RANGE
qa_private_subnet = [ "subnet-0786bc7117fb2943f", "subnet-0f5d7eeaae00fe1c4", "subnet-04402400a1c798fc5" ] # Replace with qa private subnets
uat = [ "192.168.0.0/16", "10.0.0.0/16" ] # replace with QA & dev VPC RANGE
uat_private_subnet = [ "subnet-052fabf1f9a2e8727", "subnet-01c45b5d7505a185e", "subnet-039f0d0b9b2458ffc" ] # Replace with uat private subnets