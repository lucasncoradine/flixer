#!/bin/bash

source ./Scripts/Helpers/colored-text.sh
source ./Scripts/Helpers/selectmenu.sh

TITLE=""
BRANCH_FOLDER=$(git branch --show-current | cut -f1 -d"/" | tr 'a-z' 'A-Z')

# Request a title
print_yellow "Title for this Pull Request: "
read -p "" TITLE

# Type of Pull Request
print_yellow "Type of this Pull Request: \n"
options=("Added" "Changed" "Deprecated" "Removed" "Fixed" "Security")
select_option "${options[@]}"
TYPE="${options[$?]}" 

# Create Pull Request
gh pr create --title "$BRANCH_FOLDER($TYPE): $TITLE" --base dev --web