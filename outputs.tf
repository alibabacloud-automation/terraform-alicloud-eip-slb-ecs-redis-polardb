output "this_vpc_id" {
  value = var.vpc_id
}

output "this_vswitch_id" {
  value = var.vswitch_id
}

output "this_security_group_id" {
  value = alicloud_security_group.default.id
}

output "this_ecs_id" {
  value = alicloud_instance.default.id
}

output "this_slb_id" {
  value = alicloud_slb_load_balancer.default.id
}

output "this_eip_id" {
  value = alicloud_eip.default.id
}

output "this_redis_instance_id" {
  value = alicloud_kvstore_instance.default.id
}

output "this_polar_db_instance_id" {
  value = alicloud_polardb_database.default.id
}