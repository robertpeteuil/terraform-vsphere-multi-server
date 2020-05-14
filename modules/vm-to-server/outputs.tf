output vm_ip_addresses {
  value = var.vsphere_server == "one" ? vsphere_virtual_machine.vm_one.guest_ip_addresses : vsphere_virtual_machine.vm_two.guest_ip_addresses
}
