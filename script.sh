#! /bin/bash
echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "Copying i3 config"
    mkdir -p ~/.config/i3/
    ln -s $HOME/dotfiles/config $HOME/.config/i3/config
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Installing Brew Dependencies"
    brew cask install slate
    brew install zsh
    echo "Copying Slate config"
    ln -s $HOME/dotfiles/.slate $HOME/.slate
fi
echo "Copying zshrc"
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
echo "Creating a default file for aws"
echo "export AWS_PROFILE=default" > .zsh_aws
echo "Done. Please change the shell to zsh"