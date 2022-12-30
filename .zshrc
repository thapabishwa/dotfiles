# Fig pre block. Keep at the top of this file.
#[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Import arch-name for m1
arch_name="$(uname -m)"
DIR="$HOME/thapabishwa/dotfiles"
# Import oh-my-zsh path before importing oh-my-zsh
# source $DIR/.zsh_oh_my_zsh
# Aliases
source $DIR/.zsh_alias
# AWS Default Profile
source $DIR/.zsh_aws
# ZSH Comp init
source $DIR/.zsh_compinit
# Go Configurations
source $DIR/.zsh_go
# ZSH history Configurations
source $DIR/.zsh_history
# ZSH nvm
# source $DIR/.zsh_nvm
# OS specific paths and configurations
source $DIR/.zsh_os
# ZSH Copy Paster fix
source $DIR/.zsh_paste_fix
# 
source $DIR/.zsh_path
# ZSH Prompt Profile
source $DIR/.zsh_profile
# ZSH  Pyenv 
source $DIR/.zsh_pyenv
# ZSH Kubernetes Prompt Add on
source $DIR/.zsh_zsh_kubeps1
# ZSH Autocompletion
source $DIR/.zsh_autocompletion
# ZSH Plugins
# source $DIR/.zsh_helm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fig post block. Keep at the bottom of this file.
#[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/bthapa/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)