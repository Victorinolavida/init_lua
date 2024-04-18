-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "<leader>pt", ':Neotree reveal<CR>', desc = "Project file nvim" }
    },
    config = function()
        require('neo-tree').setup({
            default_component_configs = {
                filesystem = {
                    follow_current_file = {
                        enabled = true,          -- This will find and focus the file in the active buffer every time
                        --               -- the current file is changed while the tree is open.
                        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                    },
                    event_handlers = {
                        {
                        event = "neo_tree_buffer_enter",
                        handler = function(arg)
                            vim.cmd [[
                            setlocal relativenumber
                        ]]
                        end,
                        },

          {
            event = "file_opened",
            handler = function(file_path)
              -- auto close
              -- vimc.cmd("Neotree close")
              -- OR
              require("neo-tree.command").execute({ action = "close" })
            end
          },

                    },
                },
            },
        })
    end,
}
