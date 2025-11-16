vim.opt.completeopt = {"menuone", "noselect", "popup"}
vim.keymap.set('i', '<c-space>', function()
  vim.lsp.completion.get()
end)
vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    vim.lsp.completion.enable(true, client.id, bufnr, {
      autotrigger = true,
    })
  end
})
vim.lsp.enable('ruby_lsp')
