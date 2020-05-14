output vm_ip_addresses_one {
  value = var.vsphere_server == "one" ? vsphere_virtual_machine.vm_one.guest_ip_addresses : ""
}

output "vm_ip_addresses_two" {
  value = var.vsphere_server == "two" ? vsphere_virtual_machine.vm_two.guest_ip_addresses : ""
}
