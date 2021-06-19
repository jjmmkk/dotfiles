#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ensure_link()
{
	test -L "$HOME/$2" || ln -s "$DOTFILES_DIR/files/$1" "$HOME/$2"
}

test -d "$HOME"/.npm-global || mkdir "$HOME"/.npm-global

# bash
ensure_link 'bash_profile'  '.bash_profile'
ensure_link 'bashrc'        '.bashrc'
ensure_link 'profile'       '.profile'
ensure_link 'profile.d'     '.profile.d'

# git
ensure_link 'gitconfig'     '.gitconfig'
ensure_link 'gitignore'     '.gitignore'

# Jottacloud
ensure_link 'jottaignore'   '.jottaignore'

# vim
ensure_link 'vimrc'         '.vimrc'

# zsh
ensure_link 'zsh.profile.d' '.zsh.profile.d'
ensure_link 'zsh_profile'   '.zsh_profile'
echo 'source ~/.zsh_profile' >> "$HOME"/.zshrc
