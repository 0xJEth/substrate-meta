
.DEFAULT_GOAL := help

.PHONY: help

tackle-install:  ## Install tackle-box, a helper for managing repo
	@if ! tackle -h >/dev/null 2>&1; then pip3 install tackle-box; fi

pull-repos: tackle-install  ## Pull all the underlying repos
	tackle repos.yaml --no-input

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'
