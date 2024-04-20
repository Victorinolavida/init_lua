return {
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup({

        })

        vim.keymap.set("n", "<leader>tt", function()
            require('trouble').toggle()
        end, { desc = "Show trouble menu" })

        vim.keymap.set("n", "<leader>[t", function()
            require('trouble').next({ skip_groups = true, jump = true })
        end, { desc = "Go next trouble" })

        vim.keymap.set("n", "<leader>[t", function()
            require('trouble').previous({ skip_groups = true, jump = true })
        end, { desc = "Go previous trouble" })
    end
}
