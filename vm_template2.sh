#!/bin/bash

# https://github.com/JamesTurland/JimsGarage/tree/main/Kubernetes/Cloud-Init 

# 1. Download the ISO using the GUI (tested on https://cloud-images.ubuntu.com/lunar/current/lunar-server-cloudimg-amd64-disk-kvm.img)
# 2. Create the VM via CLI
# 3. Expand the VM disk size to a suitable size (suggested 10 GB)
# 4. Create the Cloud-Init template
# 5. Deploy new VMs by cloning the template (full clone)

qm create 5000 --memory 2048 --core 2 --name ubuntu-cloud --net0 virtio,bridge=vmbr0
cd /var/lib/vz/template/iso/
qm importdisk 5000 lunar-server-cloudimg-amd64-disk-kvm.img <YOUR STORAGE HERE>
qm set 5000 --scsihw virtio-scsi-pci --scsi0 <YOUR STORAGE HERE>:vm-5000-disk-0
qm set 5000 --ide2 <YOUR STORAGE HERE>:cloudinit
qm set 5000 --boot c --bootdisk scsi0
qm set 5000 --serial0 socket --vga serial0