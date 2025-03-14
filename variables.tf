#alicloud_security_group
variable "name" {
  description = "The common name"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The specification of vpc_id."
  type        = string
  default     = ""
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = ""
}

#alicloud_eip
variable "eip_bandwidth" {
  description = "The specification of the eip bandwidth."
  type        = string
  default     = "10"
}

variable "eip_internet_charge_type" {
  description = "The specification of the eip internet charge type."
  type        = string
  default     = "PayByBandwidth"
}

#alicloud_slb_load_balancer
variable "slb_address_type" {
  description = "The specification of the slb intranet."
  type        = string
  default     = "intranet"
}

variable "slb_spec" {
  description = "The specification of the slb spec."
  type        = string
  default     = "slb.s2.small"
}

variable "vswitch_id" {
  description = "The specification of vswitch_id."
  type        = string
  default     = ""
}

variable "slb_tags_info" {
  description = "The specification of the slb tags info."
  type        = string
  default     = ""
}

#alicloud_instance
variable "zone_id" {
  description = "The specification of zone msg."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = ""
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = ""
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = ""
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = ""
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

variable "data_disks_name" {
  description = "The name of the data disk."
  type        = string
  default     = ""
}

variable "ecs_size" {
  description = "The specification of the ecs size."
  type        = number
  default     = 1200
}

variable "category" {
  description = "The specification of the category."
  type        = string
  default     = "cloud_efficiency"
}

variable "data_disks_description" {
  description = "The description of the data disk."
  type        = string
  default     = ""
}

variable "encrypted" {
  description = "Encrypted the data in this disk."
  type        = bool
  default     = false
}

#alicloud_kvstore_instance
variable "redis_instance_name" {
  description = "The specification of the redis instance name."
  type        = string
  default     = ""
}

variable "security_ips" {
  description = "The specification of the security ips."
  type        = list(string)
  default     = []
}

variable "redis_instance_type" {
  description = "The specification of the redis instance type."
  type        = string
  default     = "Redis"
}

variable "redis_engine_version" {
  description = "The specification of the redis engine version."
  type        = string
  default     = "4.0"
}

variable "redis_instance_class" {
  description = "The specification of the redis instance class."
  type        = string
  default     = ""
}

#alicloud_polardb_cluster
variable "polar_db_type" {
  description = "The specification of the polar_db type."
  type        = string
  default     = "MySQL"
}

variable "polar_db_version" {
  description = "The specification of the polar_db version."
  type        = string
  default     = "5.6"
}

variable "polar_db_pay_type" {
  description = "The specification of the polar_db pay type."
  type        = string
  default     = "PostPaid"
}

variable "polar_db_node_class" {
  description = "The specification of the polar_db node_class."
  type        = string
  default     = ""
}

variable "polar_db_cluster_description" {
  description = "The specification of the polar_db cluster description."
  type        = string
  default     = ""
}

#alicloud_polardb_database
variable "polar_db_name" {
  description = "The specification of the polar_db instance name."
  type        = string
  default     = ""
}

