# Minimal dotfiles

These dotfiles are for macOS, but most settings (vim, tmux, bash, etc.) will work on any Unix-like system (e.g., Linux). These files constitute a minimal configuration, aimed at achieving simplicity while retaining functionality.

![nvim in tmux](https://i.imgur.com/ZNKbaUY.png)

## Symlinking

You can symlink the dotfiles you want to use in the following manner:

```bash
cd ~
git clone https://github.com/telarmago/dotfiles.git
ln -s ~/dotfiles/zsh/.zshrc ~/
ln -s ~/dotfiles/vim/.vimrc ~/
# etc.
```
