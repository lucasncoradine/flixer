#!/bin/bash

source ./Scripts/Helpers/colored-text.sh
source ./Scripts/Helpers/selectmenu.sh

DEFAULT_BASE="origin/dev"

# Request a name
print_yellow "Branch name: "
read BRANCH_NAME

# Request base branch
print_yellow "Make branch from (default is $(print_green $DEFAULT_BASE)): "
read BRANCH_BASE
BRANCH_BASE=${BRANCH_BASE:-$DEFAULT_BASE}

# Branch type
print_yellow "Type of branch: \n"
options=("Core" "Feature" "UI")
select_option "${options[@]}"
TYPE=$(echo "${options[$?]}" | tr '[:upper:]' '[:lower:]')

# Create Pull Request
git checkout -b "$TYPE/$BRANCH_NAME" $BRANCH_BASE