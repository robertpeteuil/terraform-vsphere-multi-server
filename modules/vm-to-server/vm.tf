#-----------------------------------------------------------------
# Provision VM
#-----------------------------------------------------------------

resource "vsphere_virtual_machine" "vm_one" {
  count    = var.vsphere_server == "one" ? 1 : 0
  provider = vsphere.one

  name             = "${var.vm_name}-${random_string.vm_name_suffix.result}"
  folder           = var.vm_folder
  resource_pool_id = data.vsphere_compute_cluster.vsphere_compute_cluster_one.resource_pool_id
  datastore_id     = data.vsphere_datastore.vsphere_datastore_one.id

  clone {
    template_uuid = data.vsphere_virtual_machine.template_from_ovf_one.id
  }

  num_cpus = var.vm_cpus
  memory   = var.vm_ram_size
  guest_id = var.vm_guest_id

  network_interface {
    network_id = data.vsphere_network.vm_network_one.id
  }

  disk {
    label            = "disk0"
    size             = var.vm_disk_size
    thin_provisioned = data.vsphere_virtual_machine.template_from_ovf_one.disks.0.thin_provisioned
  }

  # required to support vApp
  cdrom {
    client_device = true
  }
}

resource "vsphere_virtual_machine" "vm_two" {
  count    = var.vsphere_server == "two" ? 1 : 0
  provider = vsphere.two

  name             = "${var.vm_name}-${random_string.vm_name_suffix.result}"
  folder           = var.vm_folder
  resource_pool_id = data.vsphere_compute_cluster.vsphere_compute_cluster_two.resource_pool_id
  datastore_id     = data.vsphere_datastore.vsphere_datastore_two.id

  clone {
    template_uuid = data.vsphere_virtual_machine.template_from_ovf_two.id
  }

  num_cpus = var.vm_cpus
  memory   = var.vm_ram_size
  guest_id = var.vm_guest_id

  network_interface {
    network_id = data.vsphere_network.vm_network_two.id
  }

  disk {
    label            = "disk0"
    size             = var.vm_disk_size
    thin_provisioned = data.vsphere_virtual_machine.template_from_ovf_two.disks.0.thin_provisioned
  }

  # required to support vApp
  cdrom {
    client_device = true
  }
}
