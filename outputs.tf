output "web_server_id" {
  description = "ID of the web server VM"
  value       = virtualbox_vm.webvm.id
}

output "database_server_id" {
  description = "ID of the database server VM"
  value       = virtualbox_vm.dbvm.id
}

output "web_server_status" {
  description = "Status of the web server VM"
  value       = virtualbox_vm.webvm.status
}

output "database_server_status" {
  description = "Status of the database server VM"
  value       = virtualbox_vm.dbvm.status
}