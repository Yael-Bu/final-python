#!/bin/bash
set -e  # Exit the script if any command fails

# Install git if it's not installed
if ! command -v git &> /dev/null
then
    echo "Git is not installed. Installing..."
    sudo yum install -y git  # Install Git
fi

# Define the GitHub repository URL and the destination directory on EC2
GIT_REPO_URL="https://github.com/Yael-Bu/final-python.git"
DEST_DIR="/home/ec2-user/app"  # The directory on EC2 where the code will be cloned

# Check if the destination directory already exists, and remove it if it does
if [ -d "$DEST_DIR" ]; then
    echo "Removing existing directory $DEST_DIR..."
    sudo rm -rf "$DEST_DIR"  # Remove the directory and its contents
fi

# Clone the GitHub repository to the destination directory
echo "Cloning repository from GitHub..."
git clone "$GIT_REPO_URL" "$DEST_DIR"  # Clone the repo to the specified directory

echo "Repository cloned successfully to $DEST_DIR."  # Confirmation message
