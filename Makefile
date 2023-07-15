##
# Compile Alfred 5 workflow integration with org-mode capture 
#
.DEFAULT_GOAL := help

compile: ## Compile Alfred 5 workflow with org-mode capture integration 
	@echo "Compiling the workflow"
	@zip -j ./org-mode-capture.alfredworkflow ./source/*
# end

help:   ## Show short help for every available make target
	@echo "\033[1mAvailable make commands with descriptions:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1m\033[32mmake %-30s\033[0m %s\n", $$1, $$2}'
	@echo "For more specific info check https://github.com/vlnn/README.md"
