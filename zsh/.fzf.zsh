# Setup fzf
# ---------
if [[ ! "$PATH" == */home/om/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/om/.fzf/bin"
fi

source <(fzf --zsh)
#
# Auto-completion
# ---------------
source "/home/om/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/home/om/.fzf/shell/key-bindings.zsh"
