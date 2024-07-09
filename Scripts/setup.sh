#!/bin/bash

GREEN='\033[32m'
CLEAR='\033[0m'

printf "Installing dependencies... 📦\n"

# Install xcpretty
printf "Installing ${GREEN}xcpretty${CLEAR}\n"
gem install xcpretty
