#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

mkdir -p ~/.workstation
cd ~/.workstation

# Define the repository URL and the make targets
REPO_URL="git@github.com:robinlehrmann/workstation.git"
TARGET1="install-ansible"
TARGET2="setup"

# Clone the repository
git clone $REPO_URL
cd $(basename $REPO_URL .git)

# Execute the make targets
#make $TARGET1
#make $TARGET2

cd -
