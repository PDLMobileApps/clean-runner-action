#!/bin/bash

# Get workspace directory from the input
WORKSPACE_DIR=$1

# Check if WORKSPACE_DIR is not empty
if [ -z "$WORKSPACE_DIR" ]; then
  echo "Aborting as WORKSPACE_DIR is not set or empty."
  exit 1
fi

echo "Cleaning workspace directory ($WORKSPACE_DIR)"
sudo rm -rf "$WORKSPACE_DIR"
mkdir -p "$WORKSPACE_DIR"
xcrun simctl delete unavailable
rm -rf ~/Library/Developer/Xcode/DerivedData/*
rm -rf ~/Library/Caches/com.apple.dt.Xcode/*
sudo rm -rf /Applications/Xcode_*.app
sudo rm -rf /tmp/*
echo "Cleanup completed"
