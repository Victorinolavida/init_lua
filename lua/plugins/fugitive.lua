return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git,{desc = "Git fugitive"})

        vim.keymap.set("n", "<leader>gp", function ()
            vim.cmd.Git('push')
        end)
        vim.keymap.set("n", "<leader>gc", function ()
            vim.cmd.Git('commit')
        end)
    end
}
