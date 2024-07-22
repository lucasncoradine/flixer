#!/bin/bash

source ./Scripts/Helpers/colored-text.sh

# Delete .xcodeproj files
print_yellow "Removing existing project 🧹"
rm -rf ./FlixerProject/FlixerProject.xcodeproj

# Run xcodegen
print_yellow "Running xcodegen"
xcodegen generate --project "FlixerProject"