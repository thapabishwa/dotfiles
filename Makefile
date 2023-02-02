SHELL:=/bin/bash
.DEFAULT_GOAL:=help

ORG = thapabishwa
PROJECT = dotfiles
WORKDIR := $(shell pwd)
TARGETDIR := ${HOME}
OBJS = zshrc slate

##@ Dependencies
macdeps:  ## Get dependencies for local build
	$(info Checking and getting dependencies)
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	@brew bundle --file=${WORKDIR}/Brewfile
	echo -n "export AWS_PROFILE=dev" > ${WORKDIR}/.zsh_aws


linuxdeps:  ## Get dependencies for local build
	$(info Checking and getting dependencies)
	mkdir -p ~/.config/i3/
	ln -s $(WORKDIR)/config $(TARGETDIR)/.config/i3/config
	echo -n "export AWS_PROFILE=dev" > ${WORKDIR}/.zsh_aws

##@ Installation
inject: $(OBJS)  ## Inject dotfiles to home directory
	$(info Injecting dotfiles to home directory)

##@ Cleanup
clean: ## Clean Homedirectory
	$(info Clean home folder)
	mv ${TARGETDIR}/.zshrc ${TARGETDIR}/.zshrc.bak.$(shell date +%s)
	mv ${TARGETDIR}/.slate ${TARGETDIR}/.slate.bak.$(shell date +%s)

##@ Delete
delete: ## Delete
	$(info Delete all files)
	rm -rf ${TARGETDIR}/.zshrc.bak.*
	rm -rf ${TARGETDIR}/.slate.bak.*

##@ .slate
slate: ## Inject .slate
	$(info Install slate to home folder)
	ln -s $(WORKDIR)/.slate $(TARGETDIR)/.slate

##@ .zshrc
zshrc: ## Inject .zshrc
	$(info Install zshrc to home folder)
	ln -s $(WORKDIR)/.zshrc $(TARGETDIR)/.zshrc

##@ Utilities
help: ## Display this help
	@echo Provides the tools to inject .zshrc
	@echo
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-40s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)