# Dotfiles for Akshat

This dotfiles repo is according to my personal preference.
The dotfiles are managed using [Mackup](https://github.com/lra/mackup)

Currently trying to setup ansible playbook to make setting up new machines with packages easier. 

To run the playbook, run this command - 
```sh
ansible-playbook -i localhost, -c local --ask-become-pass your_playbook.yml
```

This command will ask for a password and escalate to sudo and then go over the flatpak and apt packages listed in the `vars` directory and install them locally after updating apt and install flatpak itself.

Intended to be used on Ubuntu 22.04+ machines. Not tested on other machines.
