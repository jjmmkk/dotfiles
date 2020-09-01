#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ensure_link()
{
	test -L "$HOME/$2" || ln -s "$DOTFILES_DIR/files/$1" "$HOME/$2"
}


# bash
ensure_link 'bash_profile'  '.bash_profile'
ensure_link 'bashrc'        '.bashrc'
ensure_link 'profile'       '.profile'
ensure_link 'profile.d'     '.profile.d'

# git
ensure_link 'gitconfig'     '.gitconfig'
ensure_link 'gitignore'     '.gitignore'

# vim
ensure_link 'vimrc'         '.vimrc'
