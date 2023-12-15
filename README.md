# Ansible Setup for my local Workstation

This repository contains an Ansible setup designed to configure my local workstations.
It includes a Makefile with targets to install Ansible and set up your environment, including software installations via Homebrew, Zsh with Oh My Zsh, and Git configuration.

## Prerequisites

Before you begin, ensure you have the following:
- python3 and make installed.
- Internet connectivity for downloading necessary packages.

## Installation

To install and run the setup directly using a `curl` script, execute the following command in your terminal:

```bash
sh -c "$(curl -fsSL https://github.com/robinlehrmann/workstation/install.sh)"
```

## Makefile Targets

1. **install-ansible**: This target installs Ansible on your local machine. Ansible is a powerful automation tool that we use to manage workstation configurations.

   To run this target, use:
   ```bash
   make install-ansible
   ```

2. **setup**: This target executes the main setup process. It installs all the required software packages via Homebrew, sets up Zsh with Oh My Zsh, and configures Git.

   To run this target, use:
   ```bash
   make setup
   ```

2. **update**: This target executes a update process. It updates and upgrades all the installed software packages via Homebrew.

   To run this target, use:
   ```bash
   make update
   ```

## Usage

After installation, your MacOS workstation will be set up with the specified configurations and software. You can rerun the `setup` target at any time to reapply the configurations.

## Contributions

Contributions to this project are welcome. Please fork the repository and submit a pull request with your changes.
