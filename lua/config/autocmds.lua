-- Desactivar el modo pegar al salir de insertar
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Desactivar el ocultamiento en algunos formatos de archivo
-- El nivel de ocultamiento predeterminado es 3 en LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})
