# Dotfiles

Configuration files and utility scripts.

## Installation

### Brew

Install [Brew](https://brew.sh/), a package manager for Mac.

Essential packages:

- `bash-completion`
- `git`

Optional packages:

- `htop`
- `jo`
- `jq`
- `nvm`
- `tree`

### Oh My Zsh

Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh), for [zsh](https://www.zsh.org/).

Install the [Powerlevel10k theme](https://github.com/romkatv/powerlevel10k).

#### Git alises

Some two-letter alises from the `git` plugin can be dangerous. Disable them in `~/.zshrc`, somewhere after `source $ZSH/oh-my-zsh.sh`:

```
unalias ga
unalias gb
unalias gc
unalias gd
unalias gf
unalias gg
unalias gk
unalias gl
unalias gl
unalias gm
unalias gp
unalias gr
```

### Link files

```
./setup.sh
```

### Fix Git autocomplete

Update _~/profile.d/02-git-completion.bash_.

See:

- https://git-scm.com/book/en/Git-Basics-Tips-and-Tricks
- https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

## Jottacloud

Install [Jottacloud CLI](https://docs.jottacloud.com/en/articles/1436854-jottacloud-cli-for-macos).

Set [.jottaignore](https://docs.jottacloud.com/en/articles/1437235-ignoring-files-and-folders-from-backup-with-jottacloud-cli) as global.

```
jotta-cli ignores set '~/.jottaignore'
```
