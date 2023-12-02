# alpine-linux-dev-setup-script

### I enjoy developing software on Proxmox VMs or LXC containers, specifically on Alpine Linux, and decided to create a script to baseline them for development.

### The script performs the following:

* installs and updates Alpine Linux community repos
* updates the OS
* installs and configures `Docker` and `Docker Compose`
* installs and configures `qemu-guest-agent` (used by Proxmox VMs)
* installs `git`, `htop` and `nano`
* reboots the system

## To use the script

* make sure you can `ssh` into the target VM or LXC, then `exit`
* click the green "code" button above, then click the 'copy' icon under HTTPS to copy the repo's URL
* on your terminal run `git clone <repo-URL>` [paste the copied URL]
* `cd` into the `alpine-linux-dev-setup-script` directory
* run `scp setup.sh <user>@<target-ip>:./setup.sh` [this copies the file to the VM/LXC's root directory]
* `ssh` to the VM/LXC
* run `chmod +x setup.sh` to change the file permissions
* run `./setup.sh`
* done!