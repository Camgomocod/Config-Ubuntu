-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Habilita el corrector ortográfico en español por defecto
vim.opt.spell = true
vim.opt.spelllang = { "es", "en" }

-- Mapas de teclas para cambiar entre corrección en español e inglés
vim.api.nvim_set_keymap("n", "<leader>se", ":set spelllang=en<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ss", ":set spelllang=es<CR>", { noremap = true, silent = true })

-- Habilitar o deshabilitar la corrección ortográfica rápidamente
vim.api.nvim_set_keymap("n", "<leader>sc", ":setlocal spell!<CR>", { noremap = true, silent = true })
