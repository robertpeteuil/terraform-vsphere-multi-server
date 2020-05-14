# Variables

variable "vsphere_server" {
  description = "vSphere server name"
  default     = "one"
}

# CLUSTER 1 - server user - or use env var VSPHERE_USER
variable "vsphere_user_1" {
  description = "vSphere Username"
}

# CLUSTER 1 - user pass - or use env var VSPHERE_PASSWORD
variable "vsphere_password_1" {
  description = "vSphere Password"
}

# CLUSTER 1 - server address - or use env var VSPHERE_SERVER
variable "vsphere_server_1" {
  description = "vSphere Server"
}

# CLUSTER 2 - server user - or use env var VSPHERE_USER
variable "vsphere_user_2" {
  description = "vSphere Username"
}

# CLUSTER 2 - user pass - or use env var VSPHERE_PASSWORD
variable "vsphere_password_2" {
  description = "vSphere Password"
}

# CLUSTER 2 - server address - or use env var VSPHERE_SERVER
variable "vsphere_server_2" {
  description = "vSphere Server"
}

variable "dc_name" {
  description = "vSphere Datacenter Name"
  default     = "PacketDatacenter"
}

variable "cluster_name" {
  description = "vSphere Cluster Name"
  default     = "MainCluster"
}

variable "datastore_name" {
  description = "vSphere Datastore Name"
  default     = "datastore1"
}

variable "vm_template_name" {
  description = "VM Template to clone"
  default     = "Ubuntu"
}

variable "vm_guest_id" {
  description = "VM Guest ID (ubuntu64Guest, windows9_64Guest, etc.)"
  default     = "ubuntu64Guest"
}

variable "vm_name" {
  description = "VM Name"
  default     = "ubuntu-demo-vm"
}

variable "vm_folder" {
  description = "VM Folder"
  default     = "test-folder"
}

variable "vm_network" {
  description = "(Required)VLAN name where the VM should be deployed"
  default     = "VM Network"
}

variable "vm_disk_size" {
  description = "VM Disk Size"
  default     = 16
}

variable "vm_cpus" {
  description = "number of CPU (core per CPU) for the VM"
  default     = 1
}

variable "vm_ram_size" {
  description = "VM RAM size in megabytes"
  default     = 2048
}
