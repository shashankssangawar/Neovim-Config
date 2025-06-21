return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({})

    -- Window navigation in terminal mode
    local term_opts = { silent = true }
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], term_opts)
    vim.keymap.set("t", "jk", [[<C-\><C-n>]], term_opts)
    vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], term_opts)
    vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], term_opts)
    vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], term_opts)
    vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], term_opts)
    vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], term_opts)

    -- Bufferline navigation in normal mode
    local normal_opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", normal_opts)
    vim.keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", normal_opts)
    vim.keymap.set("n", "<C-c>", "<cmd>bdelete<CR>", normal_opts) -- Close current buffer
  end,
}

