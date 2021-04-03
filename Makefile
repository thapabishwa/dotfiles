SHELL:=/bin/bash
.DEFAULT_GOAL:=help

ORG = thapabishwa
PROJECT = dotfiles
WORKDIR := $(shell pwd)
TARGETDIR := ${HOME}
TARGET := .zshrc

deps:  ## Get dependencies for local build
	$(info Checking and getting dependencies)
	./script.sh

##@ Cleanup
clean: ## Remove existing .zshrc
	$(info Cleaning up)
	rm -fr $(TARGETDIR)/$(TARGET) ; 

##@ Inject .zshrc
inject: clean ## Inject .zshrc
	$(info Install zshrc to home folder)
	ln -s $(WORKDIR)/$(TARGET) $(TARGETDIR)/$(TARGET)

##@ Utilities
help: ## Display this help
	@echo Provides the tools to inject .zshrc
	@echo
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-40s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)