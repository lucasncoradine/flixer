default: help

help: ## Help command
	@echo "  Usage:\n    \\033[36m make <target>\n\n \033[0m Targets:"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep  | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "     \033[36m%0s:\033[0m %s\n", $$1, $$2}'

setup: ## Install required dependencies
	@./Scripts/setup.sh

snapshots: ## Setup new snapshot images
	@./Scripts/snapshots.sh