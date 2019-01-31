resource "azurerm_network_interface" "niclinux" {
  name                = "${var.nic_name}"
  location            = "${var.location}"
  resource_group_name = "${var.squad_rg_name}"

  ip_configuration {
    name                          = "${var.nic_ip_configuration_name}"
    subnet_id                     = "${data.azurerm_subnet.subnet.id}"
    private_ip_address_allocation = "dynamic"
  }
}

resource "azurerm_virtual_machine" "vmlinux" {
  name                  = "${var.vm_linux_name}"
  location              = "${var.location}"
  resource_group_name   = "${var.squad_rg_name}"
  network_interface_ids = ["${azurerm_network_interface.niclinux.id}"]
  vm_size               = "${var.vm_linux_size}"

  delete_os_disk_on_termination = true

  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "${var.vm_linux_storage_image_reference_publisher}"
    offer     = "${var.vm_linux_storage_image_reference_offer}"
    sku       = "${var.vm_linux_storage_image_reference_sku}"
    version   = "${var.vm_linux_storage_image_reference_version}"
  }

  storage_os_disk {
    name              = "${var.vm_linux_storage_os_disk_name}"
    caching           = "${var.vm_linux_storage_os_disk_caching}"
    create_option     = "${var.vm_linux_storage_os_create_option}"
    managed_disk_type = "${var.vm_linux_storage_os_managed_disk_type}"
  }

  os_profile {
    computer_name  = "${var.vm_linux_os_profile_computer_name}"
    admin_username = "${var.vm_os_profile_admin_username}"
    admin_password = "${var.vm_os_profile_admin_password}"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
  
  provisioner "local-exec" {
        command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i '${azurerm_network_interface.niclinux.private_ip_address},' linux-playbook.yml"
  }  
}