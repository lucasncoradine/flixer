default: help

help: ## Help command
	@echo "  Usage:\n    \\033[36m make <target>\n\n \033[0m Targets:"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep  | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "     \033[36m%0s:\033[0m %s\n", $$1, $$2}'

setup: ## Install required dependencies and generate project
	@./Scripts/setup.sh
	@./Scripts/generate.sh

snapshots: ## Setup new snapshot images
	@./Scripts/snapshots.sh

pullrequest: ## Make a new Pull Request
	@./Scripts/pull-request.sh
	
branch: ## Create a new branch
	@./Scripts/branch.sh $(base)

generate: ## Use xcodegen to generate the Xcode Project
	@./Scripts/generate.sh