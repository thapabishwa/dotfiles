# Import arch-name for m1
arch_name="$(uname -m)"
# Import oh-my-zsh path before importing oh-my-zsh
# source ~/dotfiles/.zsh_oh_my_zsh
# Aliases
source ~/dotfiles/.zsh_alias
# AWS Default Profile
source ~/dotfiles/.zsh_aws
# ZSH Comp init
source ~/dotfiles/.zsh_compinit
# Go Configurations
source ~/dotfiles/.zsh_go
# ZSH history Configurations
source ~/dotfiles/.zsh_history
# ZSH nvm
# source ~/dotfiles/.zsh_nvm
# OS specific paths and configurations
source ~/dotfiles/.zsh_os
# ZSH Copy Paster fix
source ~/dotfiles/.zsh_paste_fix
# 
source ~/dotfiles/.zsh_path
# ZSH Prompt Profile
source ~/dotfiles/.zsh_profile
# ZSH  Pyenv 
source ~/dotfiles/.zsh_pyenv
# ZSH Kubernetes Prompt Add on
source ~/dotfiles/.zsh_zsh_kubeps1
# ZSH Autocompletion
source ~/dotfiles/.zsh_autocompletion
# ZSH Plugins
# source ~/dotfiles/.zsh_helm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh