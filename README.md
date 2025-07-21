# About
An archlinux podman container that downloads the latest kernel package.

# Usage
```bash
# Requires podman

# Clone this repo
git clone https://github.com/megagaming21/podman_archlinux_getkernel.git

cd podman_archlinux_getkernel

# Make the scripts executable
chmod +x *.sh
chmod +x ./workdir/*.sh

# Build the container image
./build.sh

# Run the container image
./run.sh

# The container should download the latest linux lts kernel package before exiting
ls -la ./cache/pkg
```
