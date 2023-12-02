!/bin/bash

# Install and update repositories
sed -i '/^#.*community/s/^#//' /etc/apk/repositories
apk --no-cache update
apk --no-cache upgrade

# Install and configure Docker and Docker Compose
apk --no-cache add docker docker-cli docker-compose
addgroup root docker
rc-update add docker
rc-service docker start

# Install and configure qemu-guest-agent
# Only needed for Proxmox VMs
# Comment lines 16 thru 18 if setting up an LXC
apk --no-cache add qemu-guest-agent
rc-update add qemu-guest-agent
rc-service qemu-guest-agent start

# Install git, htop, and nano
apk --no-cache add git htop nano

# Reboot the system
reboot