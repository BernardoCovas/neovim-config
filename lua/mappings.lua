require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader><tab><tab>", ":tabn<enter>", { desc = "tab next" })
map("n", "<leader><tab><S-tab>", ":tabp<enter>", { desc = "tab prev" })

vim.keymap.set({ "n" }, "K", function()
  vim.lsp.buf.hover { border = "rounded" }
end, { desc = "LSP show details", silent = true })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      relative = "editor",
      row = 0.05,
      col = 0.1,
      width = 0.8,
      height = 0.8,
      border = "single",
    },
  }
end, { desc = "terminal toggle floating term" })
