data "azurerm_subnet" "subnet" {
  name                 = "${var.shared_subnet_name}"
  virtual_network_name = "${var.shared_vnet_name}"
  resource_group_name  = "${var.shared_rg_name}"
}

data "azurerm_image" "custom" {
  name                = "${var.vm_image_name}"
  resource_group_name = "${var.squad_rg_name}"
}