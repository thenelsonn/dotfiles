# ~/.config/bash/bash.sh: general bash configuration

# ---
# Colors
# -------
purple="\[\033[01;35m\]" # purple
yellow="\[\033[01;33m\]" # yellow
black="\[\033[01;30m\]"  # black
white="\[\033[01;37m\]"  # white
green="\[\033[01;32m\]"  # green
blue="\[\033[01;34m\]"   # blue
cyan="\[\033[01;36m\]"   # cyan
red="\[\033[01;31m\]"    # red

reset="\[\033[00m\]" # reset

# ---
# History
# --------
HISTCONTROL=ignoredups  # ignore duplicate commands in history
HISTTIMEFORMAT="%F %T " # date and time formatting
HISTFILESIZE=2000       # number of lines in saved history
HISTSIZE=2000           # number of lines in active history

shopt -s histappend # append history instead of overwriting

# ---
# Window
# -------
shopt -s checkwinsize # check window size after each command

# ---
# Imports
# --------
. ~/.config/bash/aliases.sh # load aliases
. ~/.config/bash/functions.sh # load functions
