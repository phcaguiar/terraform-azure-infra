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

# Windows VM variables
variable "vm_windows_name" {
  description = "VM name"
}

variable "vm_windows_size" {
  description = "VM size"
}

variable "vm_windows_storage_os_disk_name" {
  description = "VM storage OS disk name"
}

variable "vm_windows_storage_os_disk_caching" {
  description = "VM storage OS disk caching type"
}

variable "vm_windows_storage_os_create_option" {
  description = "VM storage OS creation option type"
}

variable "vm_windows_storage_os_managed_disk_type" {
  description = "VM storage OS managed disk type"
}

variable "vm_windows_os_profile_computer_name" {
  description = "VM OS profile computer name"
}

variable "vm_windows_storage_image_reference_publisher" {
  description = "Storage Image Reference Publisher"
}

variable "vm_windows_storage_image_reference_offer" {
  description = "Storage Image Reference Offer"
}

variable "vm_windows_storage_image_reference_sku" {
  description = "Storage Image Reference Sku"
}

variable "vm_windows_storage_image_reference_version" {
  description = "Storage Image Reference Version"
}

# Linux VM variables
variable "vm_linux_name" {
  description = "VM name"
}

variable "vm_linux_size" {
  description = "VM size"
}

variable "vm_linux_storage_os_disk_name" {
  description = "VM storage OS disk name"
}

variable "vm_linux_storage_os_disk_caching" {
  description = "VM storage OS disk caching type"
}

variable "vm_linux_storage_os_create_option" {
  description = "VM storage OS creation option type"
}

variable "vm_linux_storage_os_managed_disk_type" {
  description = "VM storage OS managed disk type"
}

variable "vm_linux_os_profile_computer_name" {
  description = "VM OS profile computer name"
}

variable "vm_linux_storage_image_reference_publisher" {
  description = "Storage Image Reference Publisher"
}

variable "vm_linux_storage_image_reference_offer" {
  description = "Storage Image Reference Offer"
}

variable "vm_linux_storage_image_reference_sku" {
  description = "Storage Image Reference Sku"
}

variable "vm_linux_storage_image_reference_version" {
  description = "Storage Image Reference Version"
}

# Linux and Windows VM variables
variable "vm_os_profile_admin_username" {
  description = "VM administrator username (recommended to disable password auth)"
}

variable "vm_os_profile_admin_password" {
  description = "VM administrator password (recommended to disable password auth)"
}