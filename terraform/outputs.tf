output "vpc_id" {
  value = module.vpc.adex_poc_default_vpc
}

output "route_table_ids" {
  value = module.route_table.route_table_ids
}