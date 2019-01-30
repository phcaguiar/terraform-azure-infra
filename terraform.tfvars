# Default variables
location                                =   "eastus2"

# Shared variables
shared_rg_name                          =   "Networking-EC2-DEV"
shared_vnet_name                        =   "VirtualNetwork-EC2-DEV"
shared_subnet_name                      =   "Subnet-Internal-DEV"

# Your squad variables
squad_rg_name                           =   "Cloud-Squad-EC2-DEV"

# NIC variables
nic_name                                =   "nictest1"
nic_ip_configuration_name               =   "nicipconftest"

# VM variables
vm_name                                 =   "vmtest"
vm_size                                 =   "Standard_F2"
vm_storage_os_disk_name                 =   "vmdisktest"
vm_storage_os_disk_caching              =   "ReadWrite"
vm_storage_os_create_option             =   "FromImage"
vm_storage_os_managed_disk_type         =   "Standard_LRS"
vm_os_profile_computer_name             =   "compnametest"
vm_storage_image_reference_publisher    =   "MicrosoftWindowsServer"
vm_storage_image_reference_offer        =   "WindowsServer"
vm_storage_image_reference_sku          =   "2016-Datacenter-Server-Core"
vm_storage_image_reference_version      =   "latest"