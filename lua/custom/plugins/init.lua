-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.nu = true
vim.opt.relativenumber = true
vim.g.skip_ts_context_commentstring_module = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
-- [[ Basic Keymaps ]]
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>r", function()
    vim.cmd("so")
end)

 -- -- Harpoon config
-- local harpoon = require("harpoon")
-- -- REQUIRE
-- harpoon:setup()
-- -- REQUIRE

-- vim.keymap.set("n", "<leader>ba", function () harpoon:list():add() end)
-- vim.keymap.set("n", "<leader>bm", function () harpoon.ui:toggle_quick_menu() end)
-- vim.keymap.set("n", "<leader>bs", function()
--     require("harpoon.mark").add_file()
-- end, { desc = "Save file in harpoon buffer" })
--
-- vim.keymap.set("n", "<leader>bn", function()
--     require("harpoon.ui").nav_next()
-- end, { desc = "Navigate next buffer" })
--
-- vim.keymap.set("n", "<leader>bp", function()
--     require("harpoon.ui").nav_prev()
-- end, { desc = "Navigate previus buffer" })
--
-- vim.keymap.set("n", "<leader>bm", function()
--     require("harpoon.ui").toggle_quick_menu()
-- end, { desc = "Toogle menu  buffer" })
--
-- vim.keymap.set("n", "<leader>bd", function()
--     require("harpoon.mark").rm_file()
-- end, { desc = "Delete buffer" })

require 'lspconfig'.astro.setup {}


return {
}
