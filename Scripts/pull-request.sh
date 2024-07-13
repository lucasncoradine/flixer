#!/bin/bash

source ./Scripts/Helpers/colored-text.sh
source ./Scripts/Helpers/selectmenu.sh

BODY_FILE="./.github/PULL_REQUEST_TEMPLATE.md"
DEFAULT_DESTINATION="dev"
BRANCH_FOLDER=$(git branch --show-current | cut -f1 -d"/" | tr 'a-z' 'A-Z')

# Request a title
print_yellow "Title for this Pull Request: "
read TITLE

# Type of Pull Request
print_yellow "Type of this Pull Request: \n"
options=("Added" "Changed" "Deprecated" "Removed" "Fixed")
select_option "${options[@]}"
TYPE="${options[$?]}" 

# PR Destination
print_yellow "Pull Request destination (default is $(print_green $DEFAULT_DESTINATION)): "
read DESTINATION
DESTINATION=${DESTINATION:-$DEFAULT_DESTINATION}

# Create Pull Request
gh pr create --title "$BRANCH_FOLDER($TYPE): $TITLE" \
    --base $DESTINATION \
    --assignee "@me" \
    --body-file $BODY_FILE \
    --web