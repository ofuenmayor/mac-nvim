vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n","<Leader>gh", ":diffget //2<CR>")
vim.keymap.set("n","<Leader>gu", ":diffget //3<CR>")
vim.keymap.set("n","<Leader>co", ":Git commit<CR>")
vim.keymap.set("n","<Leader>gc", function() 
    vim.cmd [[ Git checkout ]]
end)
vim.keymap.set("n"," <leader>ga", ":Git fetch --all<CR>")

