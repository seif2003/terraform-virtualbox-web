variable "web_vm_memory" {
  description = "Memory allocation for web server"
  type        = string
  default     = "2048 mib"
}

variable "db_vm_memory" {
  description = "Memory allocation for database server"
  type        = string
  default     = "4096 mib"
}

variable "cpu_count" {
  description = "Number of CPUs for VMs"
  type        = number
  default     = 2
}

variable "network_interface" {
  description = "Host network interface"
  type        = string
  default     = "wlo1"
}