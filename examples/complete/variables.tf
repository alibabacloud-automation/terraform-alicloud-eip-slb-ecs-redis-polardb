#alicloud_security_group
variable "name" {
  description = ""
  type        = string
  default     = "tf-testacc-name"
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = "tf-testacc-description"
}

#alicloud_eip
variable "eip_bandwidth" {
  description = "The specification of the eip bandwidth."
  type        = string
  default     = "10"
}

#alicloud_slb_load_balancer
variable "slb_spec" {
  description = "The specification of the slb spec."
  type        = string
  default     = "slb.s2.small"
}

variable "slb_tags_info" {
  description = "The specification of the slb tags info."
  type        = string
  default     = "slb-tag-info"
}

#alicloud_instance
variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = "system_disk_name"
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = "system_disk_description"
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

#alicloud_kvstore_instance
variable "redis_instance_name" {
  description = "The specification of the redis instance name."
  type        = string
  default     = "tf-testacc-redis"
}

variable "security_ips" {
  description = "The specification of the security ips."
  type        = list(string)
  default     = ["127.0.0.1"]
}

variable "redis_engine_version" {
  description = "The specification of the redis engine version."
  type        = string
  default     = "4.0"
}

#alicloud_polardb_cluster
variable "polar_db_pay_type" {
  description = "The specification of the polar_db pay type."
  type        = string
  default     = "PostPaid"
}

variable "polar_db_cluster_description" {
  description = "The specification of the polar_db cluster description."
  type        = string
  default     = "polardb_cluster_description"
}