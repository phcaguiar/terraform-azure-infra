# Default variables
variable "location" {
  description = "The Azure Region in which the resources in this example should exist"
}

# Shared variables
variable "shared_rg_name" {
  description = "The shared resource group name"
}

variable "shared_vnet_name" {
  description = "The shared virtual network name"
}

variable "shared_subnet_name" {
  description = "The shared subnet name"
}

variable "vm_image_name" {
  description = "The shared vm image name name"
}

# Your squad variables
variable "squad_rg_name" {
  description = "The squad resource group name"
}

# NIC variables

variable "nic_name" {
  description = "NIC name referenced also in your vm"
}

variable "nic_ip_configuration_name" {
  description = "NIC IP configuration name referenced also in your vm"
}

# VM variables
variable "vm_name" {
  description = "VM name"
}

variable "vm_size" {
  description = "VM size"
}

variable "storage_os_disk_name" {
  description = "VM storage OS disk name"
}

variable "vm_storage_os_disk_caching" {
  description = "VM storage OS disk caching type"
}

variable "vm_storage_os_create_option" {
  description = "VM storage OS creation option type"
}

variable "vm_storage_os_managed_disk_type" {
  description = "VM storage OS managed disk type"
}

variable "vm_os_profile_computer_name" {
  description = "VM OS profile computer name"
}

variable "vm_os_profile_admin_username" {
  description = "VM administrator username (recommended to disable password auth)"
}

variable "vm_os_profile_admin_password" {
  description = "VM administrator password (recommended to disable password auth)"
}