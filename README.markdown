# Alexander Günthers dotfiles

This repo is heavily inspired by https://github.com/holman/dotfiles.
But right now I don't care about Darwin. 
Instead I want to be able to automatically setup working home environments reliably and fast.

The goal is to use it in docker and accorss all machines I work on. 

Rolling this out via cdist would be also something to consider.

TODO: does this actually still make some sense? Maybe cdist or something alike is the way to go?

## dotfiles

Dotfiles ordered by topic, inspired by https://github.com/holman/dotfiles.

- vim
- bash stuff
- zsh (needs cleanup/work)
- git (config...)
	- git-ignore `git/gitconfig.local.symlink`


## Requirements

- `/bin/sh`


## Install

```sh
git clone https://github.com/alex-guenther/dotfiles ~/.dotfiles && cd ~/.dotfiles && ./do.sh
```

