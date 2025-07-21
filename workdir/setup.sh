#!/bin/bash

echo !!! Starting setup installer script !!!
echo
echo
echo

# Define an array packages install
packages=(
linux-lts
linux-lts-headers
)

echo Installing "${packages[@]}"
pacman -Sy --noconfirm "${packages[@]}"
