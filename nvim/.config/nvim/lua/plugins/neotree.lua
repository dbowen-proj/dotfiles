return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
        keys = {
            vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle NeoTree' })	
        },
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = true,
                    hide_gitignored = true,
                },
            },
        },
        config = function(_, opts)
            require('neo-tree').setup(opts)
            vim.api.nvim_create_autocmd('BufEnter', {
                callback = function()
                    -- Check if the current buffer is a normal file buffer (not a special buffer like help or terminal)
                    if vim.bo.buftype == '' then
                        -- Close Neo-tree if it is open
                        vim.cmd('Neotree close')
                    end
                end,
            })
        end
    }

}
