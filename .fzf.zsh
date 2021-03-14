# Setup fzf
# ---------
if [[ ! "$PATH" == */home/osboxes/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/osboxes/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/osboxes/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/osboxes/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND="find * -type f -not -path '*/\.*'"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'cat {}'"

export FZF_ALT_C_COMMAND="find * -type d -not -path '*/\.*'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
