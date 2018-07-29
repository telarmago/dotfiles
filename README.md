# Minimal dotfiles

These dotfiles are for macOS, but most settings (vim, tmux, bash, etc.) will work on any Unix-like system (e.g., Linux). These files constitute a minimal configuration, aimed at achieving simplicity while retaining functionality.

![nvim in tmux](https://i.imgur.com/ZNKbaUY.png)

## Symlinking

You can symlink the dotfiles you want to use in the following manner:

```
cd ~
git clone https://github.com/telarmago/dotfiles.git
ln -s ~/dotfiles/bash/.bash_profile ~/
ln -s ~/dotfiles/vim/.vimrc ~/
...
```

## Directory structure

`tree -a`:

```
.
├── bash
│   ├── .bash_profile
│   └── .bashrc
├── chunkwm
│   ├── .chunkwmrc
│   └── .skhdrc
├── emacs
│   └── .emacs.d
│       └── init.el
├── git
│   └── .gitconfig
├── misc
│   └── .ideavimrc
├── neovim
│   └── .config
│       └── nvim
│           └── init.vim
├── tmux
│   └── .tmux.conf
└── vim
    └── .vimrc
```
