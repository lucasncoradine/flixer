#!/bin/bash

source ./Scripts/Helpers/colored-text.sh

PROCESS="Xcode"

# Kill Xcode
if [ "$(pgrep -xu "$USER" "$PROCESS")" ]; then
    print_yellow "Force-quitting ${PROCESS}...\n"
    killall "$PROCESS"
else
    print_yellow "${PROCESS} is already closed.\n"
fi

# Delete .xcodeproj files
print_yellow "Removing existing project... 🧹\n"
rm -rf ./FlixerProject/FlixerProject.xcodeproj

# Run xcodegen
print_yellow "Running xcodegen...\n"
xcodegen generate --project "FlixerProject"

# Open project
print_yellow "Opening project...\n"
xed ./FlixerProject/FlixerProject.xcodeproj