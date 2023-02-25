# ~/.config/bash/functions.sh: set of useful functions

# tmux sessionizer
ts() {
  clear
  selected=$(find ~/repos ~/.config -mindepth 1 -maxdepth 1 -type d | fzf --reverse)
  selected_name=$(basename $selected)
  tmux_running=$(pgrep tmux)

  if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected && clear
    return 0
  fi
  
  if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected
  fi

  tmux switch-client -t $selected_name
}
