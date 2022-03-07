#alicloud_security_group
name        = "update-tf-testacc-name"
description = "update-tf-testacc-description"

#alicloud_eip_address
eip_bandwidth = 20

#alicloud_slb_load_balancer
slb_spec      = "slb.s3.small"
slb_tags_info = "update-slb-tag-info"


#alicloud_instance
system_disk_name           = "test_system_disk"
system_disk_description    = "test_system_disk_description"
internet_max_bandwidth_out = "20"

#alicloud_kvstore_instance
redis_instance_name  = "update-tf-testacc-redis"
security_ips         = ["10.23.12.24"]
redis_engine_version = "5.0"

#alicloud_polardb_cluster
polardb_cluster_description = "update_polardb_cluster_description"