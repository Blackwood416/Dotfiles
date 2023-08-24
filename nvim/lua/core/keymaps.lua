-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = "."

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Map Esc to kk
map("i", "kk", "<Esc>")

-- Clear search highlighting with <leader> and c
map("n", "<leader>c", ":nohl<CR>")

-- Toggle auto-indenting for code paste
map("n", "<F2>", ":set invpaste paste?<CR>")
vim.opt.pastetoggle = "<F2>"

-- Change split orientation
map("n", "<leader>tk", "<C-w>t<C-w>K") -- change vertical to horizontal
map("n", "<leader>th", "<C-w>t<C-w>H") -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Reload configuration without restart nvim
map("n", "<leader>r", ":so %<CR>")

-- Fast saving with <leader> and s
map("n", "<leader>s", ":w<CR>")

-- Close the window that cursor is floating on
map("n", "<leader>w", ":close<CR>")

-- Close all windows and exit from Neovim with <leader> and q
map("n", "<leader>q", ":qa!<CR>")

-- Undo function
map("i", "<C-z>", "<ESC>:undo<CR>i")

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Neovim internal Terminal
map("n", "<leader>~", ":Term<CR>") -- Start a terminal
map("t", "<ESC>", "<C-\\><C-n>:q<CR>") -- Quit terminal

-- Neovim Cheatsheet
map("n", "<leader>?", ":Cheatsheet<CR>")

-- Format
map("n", "<leader>f", ":Format<CR>")

-- Neovim DAP
map("n", "<F5>", ":DapContinue<CR>")
map("n", "<F9>", ":DapToggleBreakpoint<CR>")
map("n", "<F10>", ":DapStepOver<CR>")
map("n", "<F11>", ":DapStepInto<CR>")
map("n", "<F12>", ":DapStepOut<CR>")

-- Sidebar
map("n", "<leader>e", ":SidebarNvimToggle<CR>") --open/close

-- Telescope plugins
map("n", "<leader>E", ":Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>")
map("n", "<leader>g", ":Telescope live_grep<CR>")
map("n", "<leader>u", ":Telescope undo<CR>")
map("n", "<leader>p", ":Telescope neoclip<CR>")
map("n", "<leader>m", ":Telescope macroscope<CR>")

-- Colortils
map("n", "<leader>Cp", ":Colortils picker<CR>")
map("n", "<leader>Cg", ":Colortils gradient<CR>")

-- Lspsaga
map("n", "<leader>o", ":Lspsaga outline<CR>")
map("n", "<leader>F", ":Lspsaga term_toggle<CR>")
map("n", "<leader>a", ":Lspsaga code_action<CR>")

-- Trouble
map("n", "<leader>d", ":TroubleToggle<CR>")
