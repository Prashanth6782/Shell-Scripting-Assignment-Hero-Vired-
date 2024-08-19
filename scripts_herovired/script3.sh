#!/bin/bash

USERNAME=$(whoami)
USER_ID=$(id -u)
GROUP_ID=$(id -g)
HOME_DIR=$(echo $HOME)
SHELL_USED=$(echo $SHELL)

echo "User Information:"
echo "-----------------"
echo "Username:       $USERNAME"
echo "User ID (UID):  $USER_ID"
echo "Group ID (GID): $GROUP_ID"
echo "Home Directory: $HOME_DIR"
echo "Shell:          $SHELL_USED"
