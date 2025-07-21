#!/bin/bash

mkdir -p ./cache/sync > /dev/null 2>&1
mkdir -p ./cache/pkg > /dev/null 2>&1
clear

echo
echo
echo
echo !!! Running archlinux container !!!
echo
echo
echo

podman run --rm \
    --name archlinux_getkernel_container \
    --tty \
    --interactive \
    --privileged \
    -v ./workdir:/workdir \
    -v ./cache/sync:/var/lib/pacman/sync/ \
    -v ./cache/pkg:/var/cache/pacman/pkg/ \
    run_getkernel /bin/bash

echo
echo
echo
echo !!! Exited archlinux ipxe builder container !!!
echo
echo
echo

podman rm archlinux_getkernel_container > /dev/null 2>&1
