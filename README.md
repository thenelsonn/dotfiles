# My Public Dotfiles

A set of my public configuration files that is used to quickly 
set up a brand-new system with familiar shortcuts, aliases, 
keybindings, tools, and more.

**Warning:** Consider backing up your configuration
before following the [installation guide](#installation)
down below. Do not recklessly use my settings unless you know
what they entail.

## Contents

- [i3](https://github.com/i3/i3) - a tiling window manager for X11.
- [(Neo)vim](https://neovim.io) - hyperextensible Vim-based text editor
with strong [defaults](https://neovim.io/doc/user/vim_diff.html#nvim-defaults),
builtin LSP client for semantic code inspection and refactoring, and even more
with endless number of extensions made by large (Neo)vim's community.
- [Alacritty](https://github.com/alacritty/alacritty) - modern terminal emulator 
that comes with sensible defaults, but allows for extensive configuration.
- [Tmux](https://github.com/tmux/tmux) - open-source terminal multiplexer for 
Unix-like operating systems.
- [Z Shell](https://www.zsh.org/) - a shell designed for interactive use, 
although it is also a powerful scripting language.
- [Oh My Zsh](https://ohmyz.sh/) - a delightful, open source, community-driven 
framework for managing your zsh configuration.

## Installation

In order to clone this repository onto your system, execute the following 
set of commands inside your terminal:
    
    git clone --bare https://github.com/thenelsonn/dotfiles $HOME/.cfg
    git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME checkout -f

    echo source ~/.config/zsh/profile.zsh >> ~/.zshrc && source ~/.zshrc
    config config --local status.showUntrackedFiles no

The official documentation of the products mentioned above will help you 
complete the installation.
