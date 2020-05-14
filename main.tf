# vSphere Demo - Deploy to specific cluster via module

terraform {
  required_version = ">= 0.12"

  required_providers {
    vsphere = "~> 1.18"
    random  = "~> 2.2"
  }
}

# Create VM on Consul One
module "first_vm" {
  source = "./modules/vm-to-server"

  vsphere_server = "one"

  dc_name          = "PacketDatacenter"
  cluster_name     = "MainCluster"
  datastore_name   = "datastore1"
  vm_template_name = "Ubuntu"
  vm_guest_id      = "ubuntu64Guest"
  vm_name          = "ubuntu-vm"
  vm_folder        = "test-folder"
  vm_network       = "VM Network"
  vm_disk_size     = 16
  vm_cpus          = 1
  vm_ram_size      = 2048
}

module "second_vm" {
  source = "./modules/vm-to-server"

  vsphere_server = "two"

  dc_name          = "PacketDatacenter"
  cluster_name     = "MainCluster"
  datastore_name   = "datastore1"
  vm_template_name = "RHEL"
  vm_guest_id      = "RHELGuest"
  vm_name          = "rhel-vm"
  vm_folder        = "test-folder"
  vm_network       = "VM Network"
  vm_disk_size     = 16
  vm_cpus          = 1
  vm_ram_size      = 2048
}
