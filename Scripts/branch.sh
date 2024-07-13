#!/bin/bash

source ./Scripts/Helpers/colored-text.sh
source ./Scripts/Helpers/selectmenu.sh

BRANCH_NAME=""
BRANCH_BASE="origin/dev"
BRANCH_TYPE="feature"

# Request a name
print_yellow "Branch name: "
read -p "" BRANCH_NAME

# Request base branch
print_yellow "Make branch from (default is $(print_green origin/dev)): "
read -p "" BRANCH_BASE

# Branch type
print_yellow "Type of branch: \n"
options=("Core" "Feature" "UI")
select_option "${options[@]}"
TYPE="${options[$?]}" 

# Create Pull Request
git checkout -b "$BRANCH_TYPE/$BRANCH_NAME" $BRANCH_BASE