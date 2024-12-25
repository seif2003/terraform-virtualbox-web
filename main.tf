terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "webvm" {
  name   = "web-server"
  image  = "/home/seif/Desktop/proj-terraform/images/WEBVM.ova"
  cpus   = var.cpu_count
  memory = var.web_vm_memory
  
  network_adapter {
    type           = "bridged"
    host_interface = var.network_interface
    device         = "IntelPro1000MTDesktop"
  }
}

resource "virtualbox_vm" "dbvm" {
  name   = "database-server"
  image  = "/home/seif/Desktop/proj-terraform/images/DBVM.ova"
  cpus   = var.cpu_count
  memory = var.db_vm_memory
  
  network_adapter {
    type           = "bridged"
    host_interface = var.network_interface
    device         = "IntelPro1000MTDesktop"
  }
}