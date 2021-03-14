# Setup fzf
# ---------
if [[ ! "$PATH" == */home/osboxes/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/osboxes/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/osboxes/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/osboxes/.fzf/shell/key-bindings.bash"
