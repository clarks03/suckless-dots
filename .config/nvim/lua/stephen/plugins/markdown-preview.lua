return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,

    config = function()

        local keymap = vim.keymap  -- for conciseness

        keymap.set("n", "<leader>ms", "<cmd>MarkdownPreview<CR>", { desc = "Preview MarkDown file" })
    end
}
