provider "vsphere" {
  alias  = "one"

  user           = var.vsphere_user_1
  password       = var.vsphere_password_1
  vsphere_server = var.vsphere_server_1

}

provider "vsphere" {
  alias  = "two"

  user           = var.vsphere_user_2
  password       = var.vsphere_password_2
  vsphere_server = var.vsphere_server_2

}

provider "random" {
}

resource "random_string" "vm_name_suffix" {
  length  = 4
  upper   = false
  lower   = true
  number  = false
  special = false
}
