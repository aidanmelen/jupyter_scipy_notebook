.PHONY: help
help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

run: ## Run the container
	docker run -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/scipy-notebook 

lint: ## Run the unittests
	black --line-length 100 src/app