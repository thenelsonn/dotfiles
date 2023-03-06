# ~/.config/zsh/tmux.zsh - load tmux with zsh

tmux_running=$(pgrep tmux)
if [ -z $TMUX ]; then
  if [[ -z $tmux_running ]]; then
    exec tmux new -s $USER -c ~
  else
    exec tmux a
  fi
fi
