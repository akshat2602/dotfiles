#!/bin/bash

# Create vars directory if it doesn't exist
mkdir -p vars

# Generate apt_packages.yml
echo "Generating apt_packages.yml..."
echo "apt_packages:" > vars/apt_packages.yml
apt-mark showmanual | sort | sed 's/^/  - /' >> vars/apt_packages.yml

# Generate flatpak_packages.yml
echo "Generating flatpak_packages.yml..."
echo "flatpak_packages:" > vars/flatpak_packages.yml
flatpak list --app --columns=application | sort | sed 's/^/  - /' >> vars/flatpak_packages.yml

echo "YAML files generated successfully in the 'vars' directory:"
echo "- vars/apt_packages.yml"
echo "- vars/flatpak_packages.yml"

