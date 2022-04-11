resource "azurerm_resource_group" "terra_rg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_virtual_network" "terra_vnet" {
  name                = var.vnetName
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terra_rg.location
  resource_group_name = azurerm_resource_group.terra_rg.name
}

resource "azurerm_subnet" "terra_subnet" {
  name                 = var.subnetName
  resource_group_name  = azurerm_resource_group.terra_rg.name
  virtual_network_name = azurerm_virtual_network.terra_vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "terra_nic" {
  name                = var.nicName
  location            = azurerm_resource_group.terra_rg.location
  resource_group_name = azurerm_resource_group.terra_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.terra_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "terra_vm" {
  name                = var.vmName
  resource_group_name = azurerm_resource_group.terra_rg.name
  location            = azurerm_resource_group.terra_rg.location
  size                = var.vmSize
  admin_username      = var.vmUser
  # allow_extension_operations = false

  network_interface_ids = [
    azurerm_network_interface.terra_nic.id,
  ]

  admin_ssh_key {
    username   = var.vmUser
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEub4cRE0FsK9zW12CR9GBzl4BgBYFNqbh7uaHq0WlDbdj5RjSw+xdjDnzmz9gAL2Lyop+mnD1ivWRUKGyv+q17r31txN/9FaNCHzi0/NGa3N7PwLIswS0yk6bDgvCp/wTAOi9wMD+OaSIPHiXJpQhhmx2Tlw82vQqW1x6FQDwCIxBH5k1/Bs4hkNejSDIaN1bbKWGgX7o/YMSqO3jPP3hjEYOmmXj6qPTRreBZmxFA+S+/zCbR8x/hiwf/qJDqZlzd1h76RkYPQwvTBE1mdXnzcxp6A7dD7X3FQKLol5O+LzlbHHQdrRF3eqOnOFPFh9kIpbR3Qc1FQqUJ3MhaAMb stan@dockerstan1"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"    # az vm image list --output table
    offer     = "UbuntuServer" # az vm image list --offer UbuntuServer --all --output table
    sku       = "18.04-LTS"    # az vm image list-skus --location westus --publisher Canonical --offer UbuntuServer --output table
    version   = "latest"
  }
}