# My Public Dotfiles

A set of my public configuration files.
This repo should be cloned in the home directory (~).
**However**, consider backing up your configuration
first.

**Note**: Do not recklessly use my settings unless you know
what they entail.

## Contents

- [(Neo)vim](https://neovim.io) - hyperextensible Vim-based text editor
with strong [defaults](https://neovim.io/doc/user/vim_diff.html#nvim-defaults),
builtin LSP client for semantic code inspection and refactoring, and even more
with endless number of extensions made by large (Neo)vim's community.
- [Bash](https://github.com/bminor/bash) - unix shell, command language and processor 
with support for brace expansion, command line completion, 
basic debugging and signal handling.
- [Starship](https://starship.rs) - minimal, blazingly fast, and infinitely
customizable prompt for any shell.
- [Alacritty](https://github.com/alacritty/alacritty) - modern terminal emulator 
that comes with sensible defaults, but allows for extensive configuration.
- [Tmux](https://github.com/tmux/tmux) - open-source terminal multiplexer for 
Unix-like operating systems.
- [i3](https://github.com/i3/i3) - a tiling window manager for X11.

## Installation

In order to clone this repository onto your system, execute the following 
set of commands inside your terminal:
    
    git clone --bare https://github.com/thenelsonn/dotfiles $HOME/.cfg

    echo "if [ -f ~/.config/bash/bash.sh ]; then
        . ~/.config/bash/bash.sh
    fi" >> $HOME/.bashrc
    source ~/.bashrc

    config config --local status.showUntrackedFiles no

#### Neovim

A set of the following commands should cover the installation of
Neovim and packer:

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt update && sudo apt upgrade -y
    sudo apt install neovim

    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim


**Be aware**: Some Linux distributions may experience issues with 
adding unstable PPA repositories. You might have to sign them yourself 
by performing the steps below:

    sudo apt insall gnupg gnupg2 ca-certificates\
        software-properties-common apt-transport-https -y

    sudo apt-key export <key> | eudo gpg --dearmour -o\
        /usr/share/keyrings/<package-name>.gpg

Required keys are stored in trusted.gpg file (/etc/apt/trusted.gpg).
You can view them with the help of the next command:

    sudo apt-key list

After creating/exporting keys, warnings won't be gone because package manager
doesn't know about those keys yet. Go to /etc/apt/sources.list.d and
edit files responsible for unsigned PPA repositories to make it look
the next way:

    deb [signed-by=/usr/share/keyrings/<package-name>.gpg] <link to the unstable ppa repostiory> ...
