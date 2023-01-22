local options = {
    fileencoding = "utf-8",             -- set file encoding
    clipboard = "unnamedplus",          -- sync system clipboard

    swapfile = false,                   -- do not create a swapfile
    undofile = true,                    -- save undo info in a file

    backup = false,                     -- do not keep backup after overwriting a file
    writebackup = false,                -- do not make a backup before overwriting a file

    relativenumber = true,              -- use relative line numbers
    number = true,                      -- show line numbers

    signcolumn = "yes",                 -- display the sign column
    showmode = false,                   -- don't show current mode on the status line
    cmdheight = 2,                      -- number of lines for a command line

    wrap = false,                       -- do not wrap lines
    linebreak = false,                  -- do not wrap long lines at a blank

    smartcase = true,                   -- no ignore case when pattern has uppercase
    smartindent = true,                 -- smart autoindenting for C programs

    expandtab = true,                   -- replace tabs with spaces
    shiftwidth = 4,                     -- number of spaces to use for one indent step
    tabstop = 4,                        -- number of spaces for a tab

    termguicolors = true,               -- enable termguicolors
}

-- C indentation fix
vim.cmd("setlocal cindent cino=j1,(0,ws,Ws")

for i, j in pairs(options) do
	vim.opt[i] = j
end
