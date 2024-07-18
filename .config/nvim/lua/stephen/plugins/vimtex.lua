return {
    "lervag/vimtex",
    lazy = false,      -- we don't want to lazy load VimTex
    -- tag = "v2.15",  -- uncomment to pin to a specific release
    init = function()
        vim.cmd("filetype plugin indent on")
        vim.cmd("syntax enable")
        vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_compiler_method = 'latexmk'
        vim.g.vimtex_compiler_latexmk = {
            options = {
                '-shell-escape',
            },
        }

        local keymap = vim.keymap  -- for conciseness

        keymap.set("n", "<leader>q", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>", { desc = "Open respective PDF with Zathura" })
        keymap.set("n", "<leader>vc", "<cmd>VimtexCompile<cr>", { desc = "Initialize continuous Vimtex compilation" })

        vim.opt.conceallevel = 1

    end,
}
