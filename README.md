# My Public Dotfiles

A set of my public configuration files.
This repo should be cloned in the home directory (~).
**However**, consider backing up your configuration
first

**Note**: Do not recklessly use my settings unless you know
what they entail

## Contents

- [(Neo)vim](https://neovim.io) - hyperextensible Vim-based text editor
with strong [defaults](https://neovim.io/doc/user/vim_diff.html#nvim-defaults),
builtin LSP client for semantic code inspection and refactoring, and even more
with endless number of extensions made by large (Neo)vim's community
- [Bash](https://github.com/bminor/bash) - unix shell, command language and processor 
with support for brace expansion, command line completion, 
basic debugging and signal handling
- [Starship](https://starship.rs) - minimal, blazingly fast, and infinitely
customizable prompt for any shell
- [Alacritty](https://github.com/alacritty/alacritty) - modern terminal emulator 
that comes with sensible defaults, but allows for extensive configuration
- [Tmux](https://github.com/tmux/tmux) - open-source terminal multiplexer for 
Unix-like operating systems

## Installation

This configuration requires certain packages, dependencies, 
and tools in order to work properly. The following set of commands 
should cover the entire installation process on Debian Linux systems:
    
    sudo apt update && sudo apt upgrade -y
    sudo apt install git curl tmux fd-find

    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim

    curl -sS https://starship.rs/install.sh | sh

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

    git clone --bare https://github.com/thenelsonn/dotfiles $HOME/.cfg
    git checkout

    echo "if [ -f ~/.config/bash/bash.sh ]; then
        . ~/.config/bash/bash.sh
    fi" >> $HOME/.bashrc
    exit

**Note**: If you have any problems with the installation process or further usage, 
you still may have some missing dependencies or tools. Please refer 
to the [products'](#contents) official documentation.

## Neovim

Requries [Neovim](https://neovim.io) (>= 0.8) and 
the latest version of [packer](https://github.com/wbthomason/packer.nvim).

I use the following set of plugins to speed up my perfomance:

- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - 
a colletion of configuration for Neovim's built-in LSP
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - 
portable package manager for Neovim. Manages LSP and DAP servers, linters, and formatters
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) -
an extension for mason.nvim that simplifies usage of mason with lspconfig
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) -
powerful tool that provides lsp diagnostics, code actions, and more
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) -
an autocompletion engine plugin for Neovim written in Lua
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) -
nvim-cmp source for buffer words
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) -
nvim-cmp source for (Neo)vim's command-line
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) -
nvim-cmp source for path
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) -
nvim-cmp source for Neovim's built-in LSP
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) -
nvim-cmp source for luasnip completion
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) -
vscode-like pictograms
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) -
a snippet engine for Neovim
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) -
a set of preconfigured snippets for different languages
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) -
highly extendable fuzzy finder
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) -
file browser extension for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) -
a blazingly fast and easy to configure Neovim status line
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) -
[Treesitter](https://github.com/tree-sitter/tree-sitter) configuration and abstraction layer for Neovim
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) -
auto close and auto rename HTML tags
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) -
autopairs for Neovim written in Lua
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) -
smart and powerful comment plugin for Neovim
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) -
extension for [Comment.nvim](https://github.com/numToStr/Comment.nvim) and
[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) -
blazingly fast git decorations implemented purely in lua/teal
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) -
markdown preview plugin for (Neo)vim
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) -
a lua-powered (Neo)vim greeter
- [edeneast/nightfox.nvim](https://github.com/edeneast/nightfox.nvim) -
a highly customizable theme for (Neo)vim
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) -
an icon pack for Neovim

#### Installation

On Debian Linux distributions, the installation commands should look like this:

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt update && sudo apt upgrade -y
    sudo apt update && sudo apt install neovim

    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim


**Be aware**: Some Linux distributions may experience issues with 
adding unstable PPA repositories. You might have to sign them yourself 
by performing the steps below:

    sudo apt insall gnupg gnupg2 ca-certificates\
        software-properties-common apt-transport-https -y

    sudo apt-key export <key> | sudo gpg --dearmour -o\
        /usr/share/keyrings/<package-name>.gpg

Required keys are stored in trusted.gpg file (/etc/apt/trusted.gpg).
You can view them with the help of the next command.

    sudo apt-key list

After creating/exporting keys, warnings won't be gone, because package manager
doesn't know about those keys yet. Go to /etc/apt/sources.list.d and
edit files responsible for unsigned PPA repositories to make it look
the next way:

    deb [signed-by=/usr/share/keyrings/<package-name>.gpg] <link to the unstable ppa repostiory> ...
