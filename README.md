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

Stow flags:

-t DIR
--target=DIR
   Set the target directory to "DIR" instead of the parent of the stow directory.

-v
--verbose[=N]
   Send verbose output to standard error describing what Stow is doing. Verbosity levels are from  0  to  5;  0
   is  the  default. Using  "-v"  or "--verbose" increases the verbosity by one; using ‘--verbose=N' sets it to N.
