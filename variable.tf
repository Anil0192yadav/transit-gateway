variable "vpc_id-dev" {
  type = string
}
variable "vpc_id-qa" {
  type = string
}
variable "vpc_id-uat" {
  type = string
}
variable "transit_gateway_name" {
  type = string
}
variable "dev_private_subnet" {
  type = list(string)
}
variable "qa_private_subnet" {
  type = list(string)
}
variable "uat_private_subnet" {
  type = list(string)
}
variable "dev" {
  type = list(string)
}
variable "qa" {
  type = list(string)
}
variable "uat" {
  type = list(string)
}
variable "resource_tags" {
  type = map(string)
}
