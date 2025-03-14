output "this_vpc_id" {
  description = "The ID of the VPC."
  value       = var.vpc_id
}

output "this_vswitch_id" {
  description = "The ID of the VSwitch."
  value       = var.vswitch_id
}

output "this_security_group_id" {
  description = "The ID of the security group."
  value       = alicloud_security_group.default.id
}

output "this_ecs_id" {
  description = "The ID of the ECS instance."
  value       = alicloud_instance.default.id
}

output "this_slb_id" {
  description = "The ID of the SLB instance."
  value       = alicloud_slb_load_balancer.default.id
}

output "this_eip_id" {
  description = "The ID of the EIP."
  value       = alicloud_eip.default.id
}

output "this_redis_instance_id" {
  description = "The ID of the Redis instance."
  value       = alicloud_kvstore_instance.default.id
}

output "this_polar_db_cluster_id" {
  description = "The ID of the PolarDB database."
  value       = alicloud_polardb_cluster.cluster.id
}

output "this_polar_db_instance_id" {
  description = "The ID of the PolarDB database."
  value       = alicloud_polardb_database.default.id
}