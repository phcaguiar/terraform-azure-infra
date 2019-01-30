data "azurerm_subnet" "subnet" {
  name                 = "${var.shared_subnet_name}"
  virtual_network_name = "${var.shared_vnet_name}"
  resource_group_name  = "${var.shared_rg_name}"
}