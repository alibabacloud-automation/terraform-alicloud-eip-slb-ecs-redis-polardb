resource "alicloud_security_group" "default" {
  name        = var.name
  vpc_id      = var.vpc_id
  description = var.description
}

resource "alicloud_eip" "default" {
  bandwidth            = var.eip_bandwidth
  internet_charge_type = var.eip_internet_charge_type
}

resource "alicloud_slb_load_balancer" "default" {
  load_balancer_name = var.name
  address_type       = var.slb_address_type
  load_balancer_spec = var.slb_spec
  vswitch_id         = var.vswitch_id
  tags = {
    info = var.slb_tags_info
  }
}

resource "alicloud_instance" "default" {
  instance_name              = var.name
  availability_zone          = var.zone_id
  security_groups            = alicloud_security_group.default.*.id
  vswitch_id                 = var.vswitch_id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.data_disks_name != "" ? var.data_disks_name : var.name
    size        = var.ecs_size
    category    = var.category
    description = var.data_disks_description != "" ? var.data_disks_description : var.description
    encrypted   = var.encrypted
  }
}

resource "alicloud_kvstore_instance" "default" {
  db_instance_name = var.redis_instance_name
  vswitch_id       = var.vswitch_id
  security_ips     = var.security_ips
  instance_type    = var.redis_instance_type
  engine_version   = var.redis_engine_version
  zone_id          = var.zone_id
  instance_class   = var.redis_instance_class
}

resource "alicloud_polardb_cluster" "cluster" {
  db_type       = var.polar_db_type
  db_version    = var.polar_db_version
  pay_type      = var.polar_db_pay_type
  db_node_class = var.polar_db_node_class
  vswitch_id    = var.vswitch_id
  description   = var.polar_db_cluster_description
}

resource "alicloud_polardb_database" "default" {
  db_cluster_id = alicloud_polardb_cluster.cluster.id
  db_name       = var.polar_db_name
}