#!/bin/bash

# Clear the __Snapshots__ folder and run tests to re-create them
GREEN='\033[32m'
CLEAR='\033[0m'

printf "${GREEN}Clearing folders${CLEAR}\n"
find . -type d -name "__Snapshots__" | while read folder
do
    rm -rf "$folder"
done

printf "${GREEN}Starting tests. Please wait...${CLEAR}\n"
cd FlixerProject
xcodebuild test -quiet -scheme FlixerProjectSnapshotTests -destination "platform=iOS Simulator,name=iPhone 15" | xcpretty -t || printf "${GREEN}Done!${CLEAR}\n"
