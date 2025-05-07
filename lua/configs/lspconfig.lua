require("mason").setup()

local nvlsp = require "nvchad.configs.lspconfig"
local mason_lspconfig = require "mason-lspconfig"

mason_lspconfig.setup()
nvlsp.defaults() -- loads nvchad's defaults
