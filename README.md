# Proxmox VE Full Course — Learn Linux TV

[Course page](https://www.learnlinux.tv/proxmox-full-course/) · **Instructor:** Jay LaCroix (Learn Linux TV) · **Status:** completed (2025)

## About

Proxmox Virtual Environment (VE) is an open-source virtualization platform based on Debian. It runs virtual machines (KVM) and Linux containers (LXC), managed from a web interface or the command line.

This free video course goes from installation to clustering and high availability.

## Course content

| # | Class |
|---|---|
| 1 | Getting Started |
| 2 | Installation Process |
| 3 | Web Console Overview |
| 4 | Containers vs Virtual Machines |
| 5 | Launching a Virtual Machine (+ bonus: a Windows VM) |
| 6 | Creating Virtual Machine Templates |
| 7 | Creating Containers |
| 8 | Creating Container Templates |
| 9 | User Management |
| 10 | Backups and Snapshots |
| 11 | Integrated Firewall |
| 12 | The Command-Line Interface |
| 13 | Networking |
| 14 | Shared Storage |
| 15 | Clustering |
| 16 | High Availability |
| Bonus | Proxmox Backup Server |

After the course, I used Proxmox to build a Kubernetes cluster from scratch, following [this Learn Linux TV guide](https://www.learnlinux.tv/how-to-build-an-awesome-kubernetes-cluster-using-proxmox-virtual-environment/).

## My notes

My commands and templates are in my cheat sheets: [devops_cheat_sheets/proxmox](https://github.com/PoissonChevre/devops_cheat_sheets/tree/main/proxmox)

- `qm` (VMs) and `pct` (containers) commands
- [VM template from a cloud image (cloud-init)](https://github.com/PoissonChevre/devops_cheat_sheets/blob/main/proxmox/templates/vm-cloud-init-template.sh)
- [LXC container template](https://github.com/PoissonChevre/devops_cheat_sheets/blob/main/proxmox/templates/lxc-template-prep.sh)

## Resources

**Official docs**

- [Proxmox VE documentation](https://pve.proxmox.com/pve-docs/)
- [Linux Container (LXC) wiki](https://pve.proxmox.com/wiki/Linux_Container)

**Cloud-init templates** (the guides I learned from)

- [apalrd: Linux VM templates with prebuilt cloud-init images](https://www.apalrd.net/posts/2023/pve_cloud/)
- [Techno Tim: Perfect Proxmox template with cloud image and cloud-init](https://technotim.live/posts/cloud-init-cloud-image/)
- [Jim's Garage: cloud-init template for Kubernetes](https://github.com/JamesTurland/JimsGarage/tree/main/Kubernetes/Cloud-Init)
- [Container template (video)](https://www.youtube.com/watch?v=J29onrRqE_I)

**Cloud images**

- [Debian cloud images](https://cloud.debian.org/images/cloud/)
- [Ubuntu cloud images](https://cloud-images.ubuntu.com/)

**Other**

- [Proxmox cheat sheet (sweworld)](https://sweworld.net/cheatsheets/proxmox/)
