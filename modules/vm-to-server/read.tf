
#-----------------------------------------------------------------
# Read vSphere Environment - CLUSTER 1
#-----------------------------------------------------------------

data "vsphere_datacenter" "dc_name_one" {
  count    = var.vsphere_server == "one" ? 1 : 0
  provider = vsphere.one

  name = var.dc_name
}

data "vsphere_datastore" "vsphere_datastore_one" {
  count    = var.vsphere_server == "one" ? 1 : 0
  provider = vsphere.one

  name          = var.datastore_name
  datacenter_id = data.vsphere_datacenter.dc_name.id
}

data "vsphere_compute_cluster" "vsphere_compute_cluster_one" {
  count    = var.vsphere_server == "one" ? 1 : 0
  provider = vsphere.one

  name          = var.cluster_name
  datacenter_id = data.vsphere_datacenter.dc_name.id
}

data "vsphere_network" "vm_network_one" {
  count    = var.vsphere_server == "one" ? 1 : 0
  provider = vsphere.one

  name          = var.vm_network
  datacenter_id = data.vsphere_datacenter.dc_name.id
}

data "vsphere_virtual_machine" "template_from_ovf_one" {
  count    = var.vsphere_server == "one" ? 1 : 0
  provider = vsphere.one

  name          = var.vm_template_name
  datacenter_id = data.vsphere_datacenter.dc_name.id
}

#-----------------------------------------------------------------
# Read vSphere Environment - CLUSTER 2
#-----------------------------------------------------------------

data "vsphere_datacenter" "dc_name_two" {
  count    = var.vsphere_server == "two" ? 1 : 0
  provider = vsphere.two

  name = var.dc_name
}

data "vsphere_datastore" "vsphere_datastore_two" {
  count    = var.vsphere_server == "two" ? 1 : 0
  provider = vsphere.two

  name          = var.datastore_name
  datacenter_id = data.vsphere_datacenter.dc_name.id
}

data "vsphere_compute_cluster" "vsphere_compute_cluster_two" {
  count    = var.vsphere_server == "two" ? 1 : 0
  provider = vsphere.two

  name          = var.cluster_name
  datacenter_id = data.vsphere_datacenter.dc_name.id
}

data "vsphere_network" "vm_network_two" {
  count    = var.vsphere_server == "two" ? 1 : 0
  provider = vsphere.two

  name          = var.vm_network
  datacenter_id = data.vsphere_datacenter.dc_name.id
}

data "vsphere_virtual_machine" "template_from_ovf_two" {
  count    = var.vsphere_server == "two" ? 1 : 0
  provider = vsphere.two

  name          = var.vm_template_name
  datacenter_id = data.vsphere_datacenter.dc_name.id
}
