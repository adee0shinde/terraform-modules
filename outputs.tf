
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = [
    module.subnets.public_subnet_1_id,
    module.subnets.public_subnet_2_id
  ]
}

output "private_subnet_ids" {
  value = [
    module.subnets.private_subnet_1_id,
    module.subnets.private_subnet_2_id
  ]
}

output "internet_gateway_id" {
  value = module.networking.internet_gateway_id
}

output "nat_gateway_id" {
  value = module.networking.nat_gateway_id
}
