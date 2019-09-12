install: ## Install and start the project
install: node_modules

build: ## Build the project scss
build: node_modules
	yarn build-css

watch: ## Watch the project scss
watch: node_modules
	yarn watch-css

node_modules: yarn.lock
	yarn install
	@touch -c node_modules

.PHONY: install build watch

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
.PHONY: help

