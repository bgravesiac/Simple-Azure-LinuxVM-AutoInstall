# Deploying an Azure Ubuntu Linux VM with Nginx & Docker using Terraform

If you want to use a different flavor of Linux, update the **source_image_reference** on this section of the **linux-vm-main.tf** file, to configure the distro and version of Linux.

```
source_image_reference {
  publisher = var.ubuntu-publisher
  offer     = var.ubuntu-offer
  sku       = "18.04-LTS" 
  version   = "latest"
}
```

---

# Linux Distro on Azure

**Ubuntu Linux Server:**

```
Publisher = "Canonical"
Offer = "UbuntuServer"
```

---

# Bootstrapping the Linux Server to Install Nginx Open Source

Execute a bash script to install to Nginx, Curl, Docker and update/upgrade and reboot:

```
#! /bin/bash
sudo apt update && sudo apt upgrade
sudo apt install nginx -y
sudo apt install curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get update
sudo apt-get upgrade
sudo shutdown -r +2
```

----

# Once rebooted, docker and nginx are available for use.

