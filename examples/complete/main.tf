provider "alicloud" {
  region = "ap-southeast-5"
}

data "alicloud_polardb_zones" "default" {
}

locals {
  zone_id = data.alicloud_polardb_zones.default.zones[0].id
}

data "alicloud_images" "default" {
  most_recent   = true
  instance_type = data.alicloud_instance_types.default.instance_types[0].id
}

data "alicloud_instance_types" "default" {
  availability_zone    = local.zone_id
  cpu_core_count       = 2
  memory_size          = 8
  instance_type_family = "ecs.g9i"
}

data "alicloud_kvstore_instance_classes" "default" {
  engine         = "Redis"
  engine_version = var.redis_engine_version
  zone_id        = local.zone_id
}

data "alicloud_polardb_node_classes" "default" {
  pay_type   = var.polar_db_pay_type
  db_type    = "MySQL"
  db_version = "5.6"
  zone_id    = local.zone_id
}

module "vpc" {
  source  = "alibaba/vpc/alicloud"
  version = "~>1.11"

  create             = true
  vpc_cidr           = "172.16.0.0/16"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_polardb_zones.default.zones[0].id]
}

module "example" {
  source = "../.."

  #alicloud_security_group
  name        = var.name
  vpc_id      = module.vpc.this_vpc_id
  description = var.description

  #alicloud_eip
  eip_bandwidth            = var.eip_bandwidth
  eip_internet_charge_type = "PayByBandwidth"

  #alicloud_slb_load_balancer
  slb_address_type = "intranet"
  slb_spec         = var.slb_spec
  vswitch_id       = module.vpc.this_vswitch_ids[0]
  slb_tags_info    = var.slb_tags_info

  #alicloud_instance
  zone_id                    = data.alicloud_polardb_zones.default.zones[0].id
  instance_type              = data.alicloud_instance_types.default.instance_types[0].id
  system_disk_category       = "cloud_essd"
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = data.alicloud_images.default.images[0].id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  ecs_size                   = 1200
  data_disks_name            = "data_disks_name"
  category                   = "cloud_essd"
  data_disks_description     = "tf-vpc-ecs-description"
  encrypted                  = true

  #alicloud_kvstore_instance
  redis_instance_name  = var.redis_instance_name
  security_ips         = var.security_ips
  redis_instance_type  = "Redis"
  redis_engine_version = var.redis_engine_version
  redis_instance_class = data.alicloud_kvstore_instance_classes.default.instance_classes[0]

  #alicloud_polardb_cluster
  polar_db_type                = "MySQL"
  polar_db_version             = "5.6"
  polar_db_pay_type            = var.polar_db_pay_type
  polar_db_node_class          = data.alicloud_polardb_node_classes.default.classes[0].supported_engines[0].available_resources[0].db_node_class
  polar_db_cluster_description = var.polar_db_cluster_description

  #alicloud_polardb_database
  polar_db_name = "tf-db-name"

}