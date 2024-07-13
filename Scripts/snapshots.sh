#!/bin/bash

source ./Scripts/Helpers/colored-text.sh

# Clear the __Snapshots__ folder and run tests to re-create them
print_green "Clearing Snapshots folders \n"
find . -type d -name "__Snapshots__" | while read folder
do
    rm -rf "$folder"
done

print_green "Stating tests. Please wait... \n"
set_output_yellow
cd FlixerProject
xcodebuild test -quiet -scheme FlixerProjectSnapshotTests -destination "platform=iOS Simulator,name=iPhone 15" | xcpretty -t || printf "${GREEN}Done!${CLEAR}\n"
set_output_clear