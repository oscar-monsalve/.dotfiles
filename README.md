# Linux (Arch) .dotfiles

Use stow to copy the config files to ```~/```.

## Stow usage

Clone repository:

```shell
git clone git@github.com:oscar-monsalve/.dotfiles.git
cd .dotfiles
```

To use stow successfully, if the config files already exist, rename them as backup files (.bak). Stow will create the
directories if they do not exist. There will be no problem if the directories are already created.

Use the following stow command once in the ```/.dotfiles``` directory.

```shell
stow -v -t ~ zsh tmux waybar hypr ghostty walker pycodestyle scripts
```
