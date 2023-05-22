vim.api.nvim_set_keymap('i','<C-L>','copilot#Accept("<CR>")', {expr=true,silent=true})
vim.g.copilot_no_tab_map = true
vim.keymap.set('i','<C-w>','<Plug>(copilot-next)',{silent=true})
vim.keymap.set('i','<C-s>','<Plug>(copilot-previous)',{silent=true})
vim.keymap.set('i','<C-b>','<Plug>(copilot-dismiss)',{silent=true})
--remap dismiss change in github copilot
