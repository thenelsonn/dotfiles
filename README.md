# My Public Dotfiles

A set of my public configuration files which is used to quickly 
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
    echo source ~/.config/zsh/profile.zsh >> ~/.zshrc && source ~/.zshrc
    config config --local status.showUntrackedFiles no
    config checkout -f

#### Neovim

A set of the following commands should cover the installation of
Neovim and packer:

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt update && sudo apt install neovim -y

    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim


**Be aware**: Some Linux distributions may experience issues with 
adding unstable PPA repositories. 
